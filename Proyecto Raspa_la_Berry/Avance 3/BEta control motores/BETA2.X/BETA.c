/* 
 * File:   BETA_control.c
 * Author: usuario
 *
 * Created on 21 de abril de 2022, 03:59 PM
 */

#include <stdio.h>
#include <stdlib.h>
#include <xc.h>
/*
 * 
 */

/*captura ADC-LCD con joystick*/
/*agregar la librerías*/
sbit LCD_RS at RB0_bit; 
sbit LCD_EN at RB1_bit; 
sbit LCD_D7 at RB5_bit; 
sbit LCD_D6 at RB4_bit; 
sbit LCD_D5 at RB3_bit; 
sbit LCD_D4 at RB2_bit;

sbit LCD_RS_Direction at TRISB0_bit;
sbit LCD_EN_Direction at TRISB1_bit;
sbit LCD_D7_Direction at TRISB5_bit;
sbit LCD_D6_Direction at TRISB4_bit;
sbit LCD_D5_Direction at TRISB3_bit;
sbit LCD_D4_Direction at TRISB2_bit;

/*Dirección de Variable*/
char VALX[10];
char VALY[10];
unsigned int X;
unsigned int Y;
unsigned int i;
 
/*configuración de los puertos*/
void main() {
    TRISC= 0x00; 
    portc= 0x00;
    TRISD= 0x00;
    /*rutina principal*/
    Lcd_Init();
    Lcd_Cmd(_LCD_CURSOR_OFF);
    Lcd_Out(1,1,"Joystick capture");
    delay_ms(1500); 
    Lcd_Cmd(_LCD_CLEAR);
    Lcd_Out(2,16,"valores de X,Y");
    for (i=0; i<15; i++){
        Lcd_Cmd(_LCD_SHIFT_LEFT);
        delay_ms(200);
    }
    delay_ms(1500);
    Lcd_Cmd(_LCD_CLEAR);
    while (1){
        X=ADC_Read(0); IntTostr(X,VALX);
        Y=ADC_Read(1); IntTostr(Y,VALY);
        Lcd_Out(1,3,"Resoluciones");
        Lcd_Out(2,1,VALX);
        Lcd_Out(2,10,VALY);
        if(X<=500){
            portd.B7=1;
            delay_us(1000);
            portd-B7=0;
            delay_ms(19);}
        if(Y<=500){
            portd.B6=1;
            delay_us(1000);
            portd-B6=0;
            delay_ms(19);}
        if(X>=530){
            portd.B7=1;
            delay_us(2200);
            portd-B7=0;
            delay_ms(19);}
        if(Y>=530){
            portd.B6=1;
            delay_us(2200);
            portd-B6=0;
            delay_ms(19);}
        if(X>=501 && x<=529){
            portd.B7=1;
            delay_us(1500);
            portd-B7=0;
            delay_ms(19);}
        if(X>=501 && x<=529){
            portd.B6=1;
            delay_us(1500);
            portd-B6=0;
            delay_ms(19);}
    }
}