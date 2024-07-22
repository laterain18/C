#ifndef ODRIVE_H
#define ODRIVE_H

#include "main.h"
typedef struct {
    float set_speed0;
    float set_speed1;
    float now_speed0;
    float now_speed1;
    int speed0_i;
    int speed1_i;
    float fliter_speed0[3];
    float fliter_speed1[3];
} ODriveParam;

extern ODriveParam odriveparam;

void odrive_speed_ct1(unsigned char num, float speed);
void odrive_feedback();
void odrive_init();
void odrive_analyze_speed(char* msg,int len);

#endif

