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

#ifndef SERVO_H
#define SERVO_H

#include "main.h"
typedef struct
{
    float ser_ang_tar;
    float ser_ang_p;
    float ser_ang_i;
    float ser_ang_d;

}ServoParam;