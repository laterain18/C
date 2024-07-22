/*
 *                   江城子 . 程序员之歌
 *
 *               十年生死两茫茫，写程序，到天亮。
 *                   千行代码，Bug何处藏。
 *               纵使上线又怎样，朝令改，夕断肠。
 *
 *               领导每天新想法，天天改，日日忙。
 *                   相顾无言，惟有泪千行。
 *               每晚灯火阑珊处，夜难寐，加班狂。
 *
 */

#include "balance.h"

BalanceParam balanceparam;

extern IMUData imuData;

char DataSend[100];
void balanceparam_init()
{
    balanceparam.gyr_ang_p = 1;
    balanceparam.gyr_ang_i = 1;
    balanceparam.gyr_ang_d = 0;

    balanceparam.wheel_v_p = 1;
    balanceparam.wheel_v_i = 1;
    balanceparam.wheel_v_d = 0;

    balanceparam.gyr_ang_v_p = 1;
    balanceparam.gyr_ang_v_i = 1;
    balanceparam.gyr_ang_v_d = 0;

    balanceparam.gyr_ang_tar = 0;
    balanceparam.wheel_v_tar = 0;
    balanceparam.gyr_ang_v_tar = 0;
}

// 陀螺仪角度环
float Bal_Ang_Control()
{
    float pwm = 0;
    float ang_bias = 0;
    static float ang_error = 0; // 定义静态局部变量ang_error，使其在函数内一直存在
    ang_bias = imuData.angle.roll - balanceparam.gyr_ang_tar;
    ang_error += ang_bias;
    if (ang_error > 5 || ang_error < -5) // 对ang_error的取值进行限幅
    {
        ang_error = 0;
    }
    pwm = balanceparam.gyr_ang_p * (imuData.angle.roll - balanceparam.gyr_ang_tar) + balanceparam.gyr_ang_i * ang_error + balanceparam.gyr_ang_d * imuData.gyro.gyroX; // 我们认为陀螺仪角度微分可以用角速度来近似
    return pwm;
}

// 陀螺仪角速度环
float Bal_Ang_Vel_Control()
{
    float pwm = 0;
    float ang_vel_bias = 0;
    static float ang_vel_error = 0; // 定义静态局部变量ang_vel_error，使其在函数内一直存在
    ang_vel_bias = imuData.gyro.gyroX - balanceparam.gyr_ang_v_tar;
    ang_vel_error += ang_vel_bias;
    if (ang_vel_error > 5 || ang_vel_error < -5) // 对ang_vel_error的取值进行限幅
    {
        ang_vel_error = 0;
    }
    pwm = balanceparam.gyr_ang_v_p * ang_vel_bias + balanceparam.gyr_ang_v_i * ang_vel_error + balanceparam.gyr_ang_v_d * imuData.accel.accelX; // 我们认为陀螺仪角速度微分可以用加速度来近似
    return pwm;
}

// 动量轮速度环
// float Bal_Wheel_Vel_Control()

// 平衡控制函数
float balance()
{
    float pwm = 0; // 初始化pwm

    float flag_run = 1; // 初始化启动判断

    // 判断是否正常启动，我们认为翻转角不在设置的范围内时自行车不能维持平衡，此时pwm输出为0

    if (imuData.angle.roll < -50 || imuData.angle.roll > 50)
    {
        flag_run = 0;
    }
    if (flag_run == 1) // 如果正常启动，则进行pid控制
    {
        balanceparam.gyr_ang_tar = Bal_Ang_Control(imuData.angle.roll, balanceparam.gyr_ang_tar, imuData.gyro.gyroX); // 陀螺仪角度环输出作为角速度环的target值

        // balanceparam.wheel_v_tar = Bal_Ang_Vel_Control(imuData.gyro.gyroX, balanceparam.ang_v_tar, imuData.accel.accelX);//陀螺仪角速度环输出作为动量轮速度环的target值
        // pwm = Bal_Wheel_Vel_Control();//动量轮速度环还没写完
        pwm = Bal_Ang_Vel_Control(); // 由于动量轮速度环没写完，这个仅仅用于测试
        if (pwm > 100 || pwm < -100) // 对pwm的取值进行限幅
        {
            pwm = 0;
        }
    }
    return pwm;
}
