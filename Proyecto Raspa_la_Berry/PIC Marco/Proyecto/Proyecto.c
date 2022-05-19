#include<16F877a.h>
#use delay(clock=8M)
#fuses NOLVP,NOWDT,HS

//#define trig pin_B0

#define b pin_B2
#define h pin_B3
#define c pin_B4
#define m pin_B5
#define g pin_B6

#define m1f pin_D2
#define m1b pin_D3
#define m2b pin_D1
#define m2f pin_D0

#define obj pin_A0
#define wall pin_A1

//float t, d;
int i;

/*void dist(){
      setup_timer_1(T1_INTERNAL|T1_DIV_BY_1);
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
}

void home(){
   for(i=0;i<=50;i++){
     output_high(b);
     delay_us(2600);
     output_low(b);
     output_high(h);
     delay_us(2000);
     output_low(h);
     output_high(c);
     delay_us(500);
     output_low(c);
     output_high(m);
     delay_us(1600);
     output_low(m);
     output_high(g);
     delay_us(1100);
     output_low(g);
     delay_us(19000);
   }
}

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
   delay_ms(1500);

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
void take(){
   for(i=0;i<=50;i++){  //Alinea
     output_high(b);
     delay_us(2600);
     output_low(b);
     output_high(h);
     delay_us(600);
     output_low(h);
     output_high(c);
     delay_us(712);
     output_low(c);
     output_high(m);
     delay_us(1600);
     output_low(m);
     output_high(g);
     delay_us(1600);
     output_low(g);
     delay_us(19000);
   }
   
   for(i=0;i<=25;i++){  //Cierra garra
     output_high(b);
     delay_us(2600);
     output_low(b);
     output_high(h);
     delay_us(600);
     output_low(h);
     output_high(c);
     delay_us(600);
     output_low(c);
     output_high(m);
     delay_us(1600);
     output_low(m);
     output_high(g);
     delay_us(900);
     output_low(g);
     delay_us(19000);
   }
   
   for(i=0;i<=50;i++){  //Desplaza
     output_high(b);
     delay_us(2266);
     output_low(b);
     output_high(h);
     delay_us(1100);
     output_low(h);
     output_high(c);
     delay_us(2600);
     output_low(c);
     output_high(m);
     delay_us(1600);
     output_low(m);
     output_high(g);
     delay_us(900);
     output_low(g);
     delay_us(19000);
   }
   
   for(i=0;i<=25;i++){  //Abre garra
     delay_us(2266);
     output_low(b);
     output_high(h);
     delay_us(1100);
     output_low(h);
     output_high(c);
     delay_us(2600);
     output_low(c);
     output_high(m);
     delay_us(1600);
     output_low(m);
     output_high(g);
     delay_us(1600);
     output_low(g);
     delay_us(19000);
   }
   
   for(i=0;i<=50;i++){  //Home
     output_high(b);
     delay_us(2600);
     output_low(b);
     output_high(h);
     delay_us(2000);
     output_low(h);
     output_high(c);
     delay_us(500);
     output_low(c);
     output_high(m);
     delay_us(1600);
     output_low(m);
     output_high(g);
     delay_us(1100);
     output_low(g);
     delay_us(19000);
   }

}*/

void main(){
   while(true){
      for(i=0;i<=5;i++){  //Home
     output_high(b);
     delay_us(2600);
     output_low(b);
     output_high(h);
     delay_us(2000);
     output_low(h);
     output_high(c);
     delay_us(500);
     output_low(c);
     output_high(m);
     delay_us(1600);
     output_low(m);
     output_high(g);
     delay_us(1100);
     output_low(g);
     delay_us(19000);
   }     
    
     
      output_high(m1f);
      output_high(m2f);
      output_low(m1b);
      output_low(m2b);
      
     /*setup_timer_1(T1_INTERNAL|T1_DIV_BY_1);
      output_high(trig);
      delay_us(10);
      output_low(trig);
      while(!input(echo))
      {}
      set_timer1(0);
      while(input(echo))
      {}
      t=get_timer1();
      d=(t/2)/(29.15);*/
      
      if (/*input(obj)==TRUE &&*/ input(wall)==TRUE){
         
         output_high(m1f);
         output_high(m1b);
         output_high(m2f);
         output_high(m2b);
         delay_ms(500); 
         
         output_low(m1f);
         output_low(m2f);
         output_high(m1b);
         output_high(m2b);
         delay_ms(1000);
         
         output_high(m1b);
         output_high(m2f);
         output_low(m1f);
         output_low(m2b);
         delay_ms(750);
         
         output_high(m1f);
         output_high(m1b);
         output_high(m2f);
         output_high(m2b);
         delay_ms(500); 
         
         output_high(m1f);
         output_high(m2f);
         output_low(m1b);
         output_low(m2b);     
      } 
     /* else{
         output_high(m1f);
         output_high(m2f);
         output_low(m1b);
         output_low(m2b);
      }*/
      if(input(obj)==TRUE){
         output_high(m1f);
         output_high(m1b);
         output_high(m2f);
         output_high(m2b);
         delay_ms(500);
         
         output_low(m1f);
         output_low(m2f);
         output_high(m1b);
         output_high(m2b);         
         delay_ms(250);
         
         output_high(m1f);
         output_high(m1b);
         output_high(m2f);
         output_high(m2b);
         delay_ms(500);

         for(i=0;i<=50;i++){  //Alinea
     output_high(b);
     delay_us(2600);
     output_low(b);
     output_high(h);
     delay_us(600);
     output_low(h);
     output_high(c);
     delay_us(712);
     output_low(c);
     output_high(m);
     delay_us(1600);
     output_low(m);
     output_high(g);
     delay_us(1600);
     output_low(g);
     delay_us(19000);
   }
   
   for(i=0;i<=25;i++){  //Cierra garra
     output_high(b);
     delay_us(2600);
     output_low(b);
     output_high(h);
     delay_us(600);
     output_low(h);
     output_high(c);
     delay_us(600);
     output_low(c);
     output_high(m);
     delay_us(1600);
     output_low(m);
     output_high(g);
     delay_us(900);
     output_low(g);
     delay_us(19000);
   }
   
   for(i=0;i<=100;i++){  //Desplaza
     output_high(b);
     delay_us(2266);
     output_low(b);
     output_high(h);
     delay_us(1100);
     output_low(h);
     output_high(c);
     delay_us(2600);
     output_low(c);
     output_high(m);
     delay_us(1600);
     output_low(m);
     output_high(g);
     delay_us(900);
     output_low(g);
     delay_us(19000);
   }
   
   for(i=0;i<=25;i++){  //Abre garra
     delay_us(2266);
     output_low(b);
     output_high(h);
     delay_us(1100);
     output_low(h);
     output_high(c);
     delay_us(2600);
     output_low(c);
     output_high(m);
     delay_us(1600);
     output_low(m);
     output_high(g);
     delay_us(1600);
     output_low(g);
     delay_us(19000);
   }
   
   for(i=0;i<=25;i++){  //Corre un poquito
     delay_us(2266);
     output_low(b);
     output_high(h);
     delay_us(1100);
     output_low(h);
     output_high(c);
     delay_us(500);
     output_low(c);
     output_high(m);
     delay_us(1600);
     output_low(m);
     output_high(g);
     delay_us(1600);
     output_low(g);
     delay_us(19000);
   }
   
   for(i=0;i<=70;i++){  //Home
     output_high(b);
     delay_us(2600);
     output_low(b);
     output_high(h);
     delay_us(2000);
     output_low(h);
     output_high(c);
     delay_us(500);
     output_low(c);
     output_high(m);
     delay_us(1600);
     output_low(m);
     output_high(g);
     delay_us(1100);
     output_low(g);
     delay_us(19000);
   }
         
         output_high(m1f);
         output_high(m2f);
         output_low(m1b);
         output_low(m2b);

      }  
     /* else{
        output_high(m1f);
        output_high(m2f);
        output_low(m1b);
        output_low(m2b);

      }*/
   }
}