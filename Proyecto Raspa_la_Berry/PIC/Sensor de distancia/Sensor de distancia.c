#include<16F877a.h>
#use delay(clock=8M)
#fuses NOLVP,NOWDT,HS
#define trig pin_B0
#define echo pin_B1
#use standard_io(b)
float d,t;

void main(){
   setup_timer_1(T1_INTERNAL|T1_DIV_BY_1);
   while(true){
      output_high(trig);
      delay_us(10);
      output_low(trig);
      while(!input(echo))
      {}
      set_timer1(0);
      while(input(echo))
      {}
      t=get_timer1();
      d=(t/2)/(29.15);
      
      if(d<35){
         output_low(pin_b7);
         output_low(pin_b6);
         output_low(pin_b5);
         output_low(pin_b4);
         output_low(pin_b3);
         output_low(pin_b2);
      }
      
      if(d<30){
         output_high(pin_b7);
         output_low(pin_b6);
         output_low(pin_b5);
         output_low(pin_b4);
         output_low(pin_b3);
         output_low(pin_b2);
      }
      
      if(d<25){
         output_high(pin_b7);
         output_high(pin_b6);
         output_low(pin_b5);
         output_low(pin_b4);
         output_low(pin_b3);
         output_low(pin_b2);
      }
      
      if(d<20){
         output_high(pin_b7);
         output_high(pin_b6);
         output_high(pin_b5);
         output_low(pin_b4);
         output_low(pin_b3);
         output_low(pin_b2);
      }
      
      if(d<15){
         output_high(pin_b7);
         output_high(pin_b6);
         output_high(pin_b5);
         output_high(pin_b4);
         output_low(pin_b3);
         output_low(pin_b2);
      }
      
      if(d<10){
         output_high(pin_b7);
         output_high(pin_b6);
         output_high(pin_b5);
         output_high(pin_b4);
         output_high(pin_b3);
         output_low(pin_b2);
      }
      
      if(d<5){
         output_high(pin_b7);
         output_high(pin_b6);
         output_high(pin_b5);
         output_high(pin_b4);
         output_high(pin_b3);
         output_high(pin_b2);
      }
      
   }
}
