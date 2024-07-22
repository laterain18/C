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

#include "odrive.h"
ODriveParam odriveparam;
void odrive_init()
{
    odriveparma.set_speed0 = 0;
    odriveparam.set_speed1 = 0;
    odriveparam.now_speed0 = 0;
    odriveparam.now_speed1 = 0;
    odriveparam.speed0_i = 0;
    odriveparam.speed1_i = 0;
    odriveparam.fliter_speed0[0] = 0;
    odriveparam.fliter_speed0[1] = 0;
    odriveparam.fliter_speed0[2] = 0;
    odriveparam.fliter_speed1[0] = 0;
    odriveparam.fliter_speed1[1] = 0;
    odriveparam.fliter_speed1[2] = 0;

}
