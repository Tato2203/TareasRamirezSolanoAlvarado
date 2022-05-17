//#include <18F4550.h>
#device ADC = 10
#fuses HS, NOWDT, NOPROJECT, NOLVP, NOPUT, NOBROWNOUT
#use delay(clock=20Mhz)
#include <lcd.c>
#BYTE PORTA=0xF80
#BYTE PORTB=0xF81
#use fast_io (B)

int16 A=0;
int16 B=0;

void main()
  {
  set_tris_A(0x07);
  set_tris_B(0x00);
  setup_adc_ports(AN0TO);
  setup_adc(adc_clock_internal);
  output_B(0x00);
  lcd_init();

  while(1)
    {
    set_adc_channel(0);
    delay_us(20);
    A=read_adc();
    set_adc_channel(1);
    delay_us(20);
    B=read_adc();

    if((150<A<900)&&(150<B<900))
    {
      OUTPUT_B(0x00);
    }

    if(B>900)
    {
      bit_set(PORTB,0);
    }

    if(B<150)
    {
      bit_set(PORTB,1);
    }

    if(A>900)
    {
      bit_set(PORTB,2);
    }
if (A<150)
{
    bit_set(PORTB,3);
}
if (input(pin_A2)==0)
{
    bit_set(PORTA,3);
}
else
    bit_clear(PORTA,3);

printf(lcd_putc,"\fx=%ld Y=%ld", A,B);
delay_ms(10);
}

}