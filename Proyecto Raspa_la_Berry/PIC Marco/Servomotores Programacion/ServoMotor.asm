
_VDelay_us:

;ServoMotor.c,9 :: 		void VDelay_us(unsigned time_us){  //esta funcion son delay_us pero a diferencia de la que viene en MikroC esta deja meter variables
;ServoMotor.c,15 :: 		time_us /=16;                //En mi caso elegi uno a 4mhz a si que selecciono 16
	RRF        FARG_VDelay_us_time_us+1, 1
	RRF        FARG_VDelay_us_time_us+0, 1
	BCF        FARG_VDelay_us_time_us+1, 7
	RRF        FARG_VDelay_us_time_us+1, 1
	RRF        FARG_VDelay_us_time_us+0, 1
	BCF        FARG_VDelay_us_time_us+1, 7
	RRF        FARG_VDelay_us_time_us+1, 1
	RRF        FARG_VDelay_us_time_us+0, 1
	BCF        FARG_VDelay_us_time_us+1, 7
	RRF        FARG_VDelay_us_time_us+1, 1
	RRF        FARG_VDelay_us_time_us+0, 1
	BCF        FARG_VDelay_us_time_us+1, 7
;ServoMotor.c,17 :: 		while(time_us--){            //crea un bucle dependiendo los microsegundos que tenga "time_us"
L_VDelay_us0:
	MOVF       FARG_VDelay_us_time_us+0, 0
	MOVWF      R0+0
	MOVF       FARG_VDelay_us_time_us+1, 0
	MOVWF      R0+1
	MOVLW      1
	SUBWF      FARG_VDelay_us_time_us+0, 1
	BTFSS      STATUS+0, 0
	DECF       FARG_VDelay_us_time_us+1, 1
	MOVF       R0+0, 0
	IORWF      R0+1, 0
	BTFSC      STATUS+0, 2
	GOTO       L_VDelay_us1
;ServoMotor.c,18 :: 		asm nop;                //Funcion de ensamblador "No operacion"
	NOP
;ServoMotor.c,19 :: 		asm nop;                //Nada de esto hay que modificar si no sabemos para que es....
	NOP
;ServoMotor.c,20 :: 		}                            //Ciero el while
	GOTO       L_VDelay_us0
L_VDelay_us1:
;ServoMotor.c,21 :: 		}                                 //cierro funcion VDelay_us();
L_end_VDelay_us:
	RETURN
; end of _VDelay_us

_gira:

;ServoMotor.c,23 :: 		void gira(unsigned long grados){  //Esta es mi funcion de girar el servomotor de 0 a 180 grados.
;ServoMotor.c,25 :: 		valor = ((grados * 2000)/180)+600;   //Hago la operacion que se explicon en el video
	MOVF       FARG_gira_grados+0, 0
	MOVWF      R0+0
	MOVF       FARG_gira_grados+1, 0
	MOVWF      R0+1
	MOVF       FARG_gira_grados+2, 0
	MOVWF      R0+2
	MOVF       FARG_gira_grados+3, 0
	MOVWF      R0+3
	MOVLW      208
	MOVWF      R4+0
	MOVLW      7
	MOVWF      R4+1
	CLRF       R4+2
	CLRF       R4+3
	CALL       _Mul_32x32_U+0
	MOVLW      180
	MOVWF      R4+0
	CLRF       R4+1
	CLRF       R4+2
	CLRF       R4+3
	CALL       _Div_32x32_U+0
	MOVLW      88
	ADDWF      R0+0, 0
	MOVWF      gira_valor_L0+0
	MOVF       R0+1, 0
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDLW      2
	MOVWF      gira_valor_L0+1
;ServoMotor.c,27 :: 		for(i=0;i<=50;i++){   //Creo un for para que la operacion dentro se repita 50 veces Recomiendo de "50 a 200"
	CLRF       gira_i_L0+0
	CLRF       gira_i_L0+1
L_gira2:
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      gira_i_L0+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__gira15
	MOVF       gira_i_L0+0, 0
	SUBLW      50
L__gira15:
	BTFSS      STATUS+0, 0
	GOTO       L_gira3
;ServoMotor.c,28 :: 		PORTB.F0=1;         //Estado logico alto
	BSF        PORTB+0, 0
;ServoMotor.c,29 :: 		VDelay_us(valor);   //Retardo de acuerdo a la formula y utilizo la funcion VDelay_us de arriba :D
	MOVF       gira_valor_L0+0, 0
	MOVWF      FARG_VDelay_us_time_us+0
	MOVF       gira_valor_L0+1, 0
	MOVWF      FARG_VDelay_us_time_us+1
	CALL       _VDelay_us+0
;ServoMotor.c,30 :: 		PORTB.F0=0;         //Estado logico bajo
	BCF        PORTB+0, 0
;ServoMotor.c,31 :: 		VDelay_us(19000);   //DUrante 19000 micro segundos con la funcion creada VDelay_us
	MOVLW      56
	MOVWF      FARG_VDelay_us_time_us+0
	MOVLW      74
	MOVWF      FARG_VDelay_us_time_us+1
	CALL       _VDelay_us+0
;ServoMotor.c,27 :: 		for(i=0;i<=50;i++){   //Creo un for para que la operacion dentro se repita 50 veces Recomiendo de "50 a 200"
	INCF       gira_i_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       gira_i_L0+1, 1
;ServoMotor.c,32 :: 		}                   //Cierro el for
	GOTO       L_gira2
L_gira3:
;ServoMotor.c,33 :: 		}           //cierro la funcion
L_end_gira:
	RETURN
; end of _gira

_main:

;ServoMotor.c,36 :: 		void main() {    //Funion principal
;ServoMotor.c,38 :: 		TRISB.RB0=0;     //Declaro el PIn RB0 como salida
	BCF        TRISB+0, 0
;ServoMotor.c,39 :: 		PORTB.RB0=0;     //Apago el Pin RB0
	BCF        PORTB+0, 0
;ServoMotor.c,43 :: 		while(1){  //Creo un bucle infinito
L_main5:
;ServoMotor.c,45 :: 		gira(0);    //Llamo la funcion creada arriba "gira(grados);" y le digo a que grados girar
	CLRF       FARG_gira_grados+0
	CLRF       FARG_gira_grados+1
	CLRF       FARG_gira_grados+2
	CLRF       FARG_gira_grados+3
	CALL       _gira+0
;ServoMotor.c,46 :: 		gira(90);
	MOVLW      90
	MOVWF      FARG_gira_grados+0
	CLRF       FARG_gira_grados+1
	CLRF       FARG_gira_grados+2
	CLRF       FARG_gira_grados+3
	CALL       _gira+0
;ServoMotor.c,47 :: 		gira(180);
	MOVLW      180
	MOVWF      FARG_gira_grados+0
	CLRF       FARG_gira_grados+1
	CLRF       FARG_gira_grados+2
	CLRF       FARG_gira_grados+3
	CALL       _gira+0
;ServoMotor.c,48 :: 		gira(135);
	MOVLW      135
	MOVWF      FARG_gira_grados+0
	CLRF       FARG_gira_grados+1
	CLRF       FARG_gira_grados+2
	CLRF       FARG_gira_grados+3
	CALL       _gira+0
;ServoMotor.c,49 :: 		gira(90);
	MOVLW      90
	MOVWF      FARG_gira_grados+0
	CLRF       FARG_gira_grados+1
	CLRF       FARG_gira_grados+2
	CLRF       FARG_gira_grados+3
	CALL       _gira+0
;ServoMotor.c,50 :: 		gira(45);
	MOVLW      45
	MOVWF      FARG_gira_grados+0
	CLRF       FARG_gira_grados+1
	CLRF       FARG_gira_grados+2
	CLRF       FARG_gira_grados+3
	CALL       _gira+0
;ServoMotor.c,51 :: 		gira(0);
	CLRF       FARG_gira_grados+0
	CLRF       FARG_gira_grados+1
	CLRF       FARG_gira_grados+2
	CLRF       FARG_gira_grados+3
	CALL       _gira+0
;ServoMotor.c,53 :: 		for(pos=0;pos<=180;pos=pos+10){ //Creo un for el cual empieza de 0 y me aumenta 10 grados hasta llegar a 180
	CLRF       main_pos_L0+0
	CLRF       main_pos_L0+1
L_main7:
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      main_pos_L0+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main17
	MOVF       main_pos_L0+0, 0
	SUBLW      180
L__main17:
	BTFSS      STATUS+0, 0
	GOTO       L_main8
;ServoMotor.c,54 :: 		gira(pos);                      //de acuerdo a lo que tenga "pos" es a donde gira el servomotor
	MOVF       main_pos_L0+0, 0
	MOVWF      FARG_gira_grados+0
	MOVF       main_pos_L0+1, 0
	MOVWF      FARG_gira_grados+1
	MOVLW      0
	BTFSC      FARG_gira_grados+1, 7
	MOVLW      255
	MOVWF      FARG_gira_grados+2
	MOVWF      FARG_gira_grados+3
	CALL       _gira+0
;ServoMotor.c,53 :: 		for(pos=0;pos<=180;pos=pos+10){ //Creo un for el cual empieza de 0 y me aumenta 10 grados hasta llegar a 180
	MOVLW      10
	ADDWF      main_pos_L0+0, 1
	BTFSC      STATUS+0, 0
	INCF       main_pos_L0+1, 1
;ServoMotor.c,55 :: 		}//Cierro el For
	GOTO       L_main7
L_main8:
;ServoMotor.c,57 :: 		for(pos=180;pos>=0;pos=pos-10){ //Lo mismo que el anterior pero ahora empiezo en 180 y disminuye hasta llegar a 0
	MOVLW      180
	MOVWF      main_pos_L0+0
	CLRF       main_pos_L0+1
L_main10:
	MOVLW      128
	XORWF      main_pos_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main18
	MOVLW      0
	SUBWF      main_pos_L0+0, 0
L__main18:
	BTFSS      STATUS+0, 0
	GOTO       L_main11
;ServoMotor.c,58 :: 		gira(pos);                      //de acuerdo a lo que tenga "pos" es a donde gira el servomotor
	MOVF       main_pos_L0+0, 0
	MOVWF      FARG_gira_grados+0
	MOVF       main_pos_L0+1, 0
	MOVWF      FARG_gira_grados+1
	MOVLW      0
	BTFSC      FARG_gira_grados+1, 7
	MOVLW      255
	MOVWF      FARG_gira_grados+2
	MOVWF      FARG_gira_grados+3
	CALL       _gira+0
;ServoMotor.c,57 :: 		for(pos=180;pos>=0;pos=pos-10){ //Lo mismo que el anterior pero ahora empiezo en 180 y disminuye hasta llegar a 0
	MOVLW      10
	SUBWF      main_pos_L0+0, 1
	BTFSS      STATUS+0, 0
	DECF       main_pos_L0+1, 1
;ServoMotor.c,59 :: 		}//Cierro el For
	GOTO       L_main10
L_main11:
;ServoMotor.c,61 :: 		}//Cierro while
	GOTO       L_main5
;ServoMotor.c,62 :: 		}//Cierro funcion principal
L_end_main:
	GOTO       $+0
; end of _main
