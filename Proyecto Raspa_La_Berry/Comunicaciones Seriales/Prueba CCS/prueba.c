#INCLUDE <16f877A.h>
#device adc=10
#USE DELAY(CRYSTAL=24000000) //Cristal Externo de 24MHz
#FUSES XT,NOPROTECT,NOWDT,NOBROWNOUT,NOPUT,NOLVP //Bits de configuración
#use rs232(baud=9600, xmit=pin_c6, rcv=pin_c7, bits=8) //Configuramos la comunicación serie
#INCLUDE <lcd.c> //Incluimos la libreria LCD

#BYTE PORTA= 5
#BYTE PORTD= 8

long bit_sensor;     //Variable almacena los bits
float sensor;
int dato;

//Para transmisor
void main()
{
   set_tris_a(0b00000001);          //Se define RA0 como entrada
   setup_adc_ports(all_analog);     //Se define el puerto como entrada analógica
   setup_adc(adc_clock_internal);   //Selección  de reloj interno para conversión de señales analógicas a digitales
   
   while(1)
   {
       set_adc_channel(0);          //Selecciono el canal 0 (RA0)
       delay_ms(1);                 //llamo retardo de 1 ms
       bit_sensor=read_adc();       //Guarde el dato del LM en tempe
       sensor=bit_sensor;
       printf("\rObjetivo impactado: valor del sensor: f C\r\n",sensor);
/*     for (dato=0;dato<=1000, dato=dato)???
       {
         putc(dato);
         printf(lcd_putc,"\fEnviado = %1D", dato);
         delay_ms(1000); // retardo de 1 segundo
       }
*/

/*

//Para receptor
char dato;
   
   #INT_RDA                              //Interrupción por datos recibidos disponibles RS232
   void serie(void)                      //Función de interrupción por dato recivido comunicación serie
   {
      dato=getc();                       //Almacena el carácter recibido por la patilla RCV 
                                         //y retorna el carácter recibido este caracter se guarda en la variable "dato"
      printf(lcd_putc, "%c", dato);      //Imprimir en la pantalla LCD el "caracter dato"
   }
   
   void configuracion (void)             //Función de configuración
   {
      lcd_init();                        //Inicializamos la pantalla LCD
      enable_interrupts(GLOBAL);         //Habilitamos las interrupciones
      enable_interrupts(INT_RDA);        //Habilitamos la interrupción por dato recibido RS232
   }
   
   void main (void)                      //Función Principal
   {
      configuracion();                   //Llamamos a la función de configuración.
      printf("INGRESE TEXTO:");          //Cadena de caracteres
      while (true)                       //Bucle infinito
      {
         printf(lcd_putc,"\fRecibido = %1D", dato);
         delay_ms(1000); // retardo de 1 segundo
      }
   }
*/
       delay_ms(1000); // retardo de 1 segundo
   }
   
}
