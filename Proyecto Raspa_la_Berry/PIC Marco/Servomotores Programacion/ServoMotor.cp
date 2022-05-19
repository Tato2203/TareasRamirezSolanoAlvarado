#line 1 "C:/Users/Diego/Documents/MikroTutoriales-Mi Canal YT/MikroC/Servomotores/ServoMotor.c"
#line 9 "C:/Users/Diego/Documents/MikroTutoriales-Mi Canal YT/MikroC/Servomotores/ServoMotor.c"
void VDelay_us(unsigned time_us){





 time_us /=16;

 while(time_us--){
 asm nop;
 asm nop;
 }
}

void gira(unsigned long grados){
 int i,valor;
 valor = ((grados * 2000)/180)+600;

 for(i=0;i<=50;i++){
 PORTB.F0=1;
 VDelay_us(valor);
 PORTB.F0=0;
 VDelay_us(19000);
 }
}


void main() {
int pos;
TRISB.RB0=0;
PORTB.RB0=0;



 while(1){

 gira(0);
 gira(90);
 gira(180);
 gira(135);
 gira(90);
 gira(45);
 gira(0);

 for(pos=0;pos<=180;pos=pos+10){
 gira(pos);
 }

 for(pos=180;pos>=0;pos=pos-10){
 gira(pos);
 }

 }
}
