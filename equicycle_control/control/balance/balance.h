#ifndef BALANCE_H
#define BALANCE_H

#include "main.h"

// 定义PID控制参数的结构体

typedef struct
{
    float gyr_ang_p; // 陀螺仪角度PID
    float gyr_ang_i;
    float gyr_ang_d;

    float gyr_ang_v_p; // 陀螺仪角速度PID
    float gyr_ang_v_i;
    float gyr_ang_v_d;

    float wheel_v_p; // 飞轮速度PID
    float wheel_v_i;
    float wheel_v_d;

    float wheel_v_tar; // 飞轮速度目标值

    float gyr_ang_v_tar; // 陀螺仪角速度目标值

    float gyr_ang_tar; // 陀螺仪角度目标值
} BalanceParam;

// 控制循环的函数原型

float Bal_Ang_Vel_Control(); // 平衡角速度控制环

float Bal_Ang_Control(); // 平衡角度控制环

float Bal_Wheel_Vel_Control(); // 平衡飞轮速度控制环

float balance(); // 平衡控制函数

# endif // BALANCE_H
