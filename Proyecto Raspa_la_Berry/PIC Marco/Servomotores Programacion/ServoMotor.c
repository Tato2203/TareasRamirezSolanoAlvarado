#include<16F877a.h>
#FUSES HS, NOWDT, NOLVP 
#use DELAY(CLOCK=8M)

void VDelay_us(unsigned time_us){  //esta funcion son delay_us pero a diferencia de la que viene en MikroC esta deja meter variables
     //64Mhz  time_us/=1           //Es importante elegir la opcion de acuerdo a los Mhz que trabaja el PIC
     //32Mhz  time_us/=2
     //16Mhz  time_us/=4
     //8Mhz   time_us/=8
     //4Mhz   time_us/=16
     time_us /=8;                //En mi caso elegi uno a 4mhz a si que selecciono 16
     
     while(time_us)    //crea un bucle dependiendo los microsegundos que tenga "time_us"
          {}
                         //Funcion de ensamblador "No operacion"
                         //Nada de esto hay que modificar si no sabemos para que es....
                                  //Ciero el while
}                                 //cierro funcion VDelay_us();

void gira(float grados){  //Esta es mi funcion de girar el servomotor de 0 a 180 grados.
          int i,valor;            //Variables de tipo entero
          valor = ((grados * 2000)/180)+600;   //Hago la operacion que se explicon en el video
          
          for(i=0;i<=50;i++){   //Creo un for para que la operacion dentro se repita 50 veces Recomiendo de "50 a 200"
                output_high(pin_b0);         //Estado logico alto
                VDelay_us(valor);   //Retardo de acuerdo a la formula y utilizo la funcion VDelay_us de arriba :D
                output_low(pin_b0);         //Estado logico bajo
                VDelay_us(19000);   //DUrante 19000 micro segundos con la funcion creada VDelay_us
                }                   //Cierro el for
}           //cierro la funcion


void main() {    //Funion principal
int pos;         //Variable de tipo entero





         while(1){  //Creo un bucle infinito
         
                  gira(0);    //Llamo la funcion creada arriba "gira(grados);" y le digo a que grados girar
                  gira(90);
                  gira(180);
                  gira(135);
                  gira(90);
                  gira(45);
                  gira(0);
                  
                  for(pos=0;pos<=180;pos=pos+10){ //Creo un for el cual empieza de 0 y me aumenta 10 grados hasta llegar a 180
                  gira(pos);                      //de acuerdo a lo que tenga "pos" es a donde gira el servomotor
                                                 }//Cierro el For
                                                 
                  for(pos=180;pos>=0;pos=pos-10){ //Lo mismo que el anterior pero ahora empiezo en 180 y disminuye hasta llegar a 0
                  gira(pos);                      //de acuerdo a lo que tenga "pos" es a donde gira el servomotor
                                                 }//Cierro el For
                                                 
                  }//Cierro while
}//Cierro funcion principal