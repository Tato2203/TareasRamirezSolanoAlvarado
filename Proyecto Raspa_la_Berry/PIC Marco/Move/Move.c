#include<16F877a.h>
#use delay(clock=8M)
#fuses NOLVP,NOWDT,HS
#define m1f pin_D2
#define m1b pin_D3
#define m2b pin_D1
#define m2f pin_D0

void go_backward(){
   output_low(m1f);
   output_low(m2f);
   output_high(m1b);
   output_high(m2b);
}

void stop(){
   output_high(m1f);
   output_high(m1b);
   output_high(m2f);
   output_high(m2b);

}

void go_forward(){
   output_high(m1f);
   output_high(m2f);
   output_low(m1b);
   output_low(m2b);

}

void turn(){
   output_high(m1b);
   output_high(m2f);
   output_low(m1f);
   output_low(m2b);
   delay_ms(2000);
}

void main(){
   while(true){
   go_forward();
   delay_ms(2000);
   stop();
   delay_ms(500);
   go_backward();
   delay_ms(2000);
   stop();
   delay_ms(500);
   turn();
   stop();
   delay_ms(500);
   }
}