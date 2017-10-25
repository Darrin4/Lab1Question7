#include<p18f452.h>
#include<delays.h>
#include<lab1_xlcd.h>
#include<stdio.h>

extern void DelayFor18TCY(void){
    Delay1KTCYx(18);
}
extern void DelayXLCD(void){
    Delay1KTCYx(5);
}
extern void DelayPORXLCD(void){
    Delay1KTCYx(15);
}