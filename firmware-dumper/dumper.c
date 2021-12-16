/***************************************************************
 *
 * OpenPCD - PIC18 copy protection bug - flash dumper
 *
 * Copyright 2010 Milosch Meriac <meriac@openpcd.de>
 *
 * see http://www.openicsp.org/ for further information
 *
 ***************************************************************

    This program is free software; you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation; version 2.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License along
    with this program; if not, write to the Free Software Foundation, Inc.,
    51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.

*/
#include "pic18fregs.h"

// same configuration as the HID reader
//static __code char __at __CONFIG1H c1h = 0x22;
#pragma config OSCS=OFF, OSC=HS

//static __code char __at __CONFIG2H c2h = 0x0F;
//#pragma config WDTPS=128, WDT=ON
#pragma config WDT=OFF

//static __code char __at __CONFIG2L c2l = 0x0A;
#pragma config BORV=27, BOR=ON, PWRT=ON

//static __code char __at __CONFIG3H c3h = 0x01;
#pragma config CCP2MUX=ON

//static __code char __at __CONFIG4L c4l = 0x81;
#pragma config DEBUG=OFF, LVP=OFF, STVR=ON

//static __code char __at __CONFIG5H c5h = 0x00;
//#pragma config CPD=ON, CPB=ON
#pragma config CPD=OFF, CPB=OFF

//static __code char __at __CONFIG5L c5l = 0x00;
//#pragma config CP0=ON, CP1=ON, CP2=ON, CP3=ON
#pragma config CP0=OFF, CP1=OFF, CP2=OFF, CP3=OFF

//static __code char __at __CONFIG6H c6h = 0x80;
//#pragma config WRTD=OFF, WRTB=ON
#pragma config WRTD=OFF, WRTB=OFF

//static __code char __at __CONFIG6L c6l = 0x00;
//#pragma config WRT0=ON, WRT1=ON, WRT2=ON, WRT3=ON
#pragma config WRT0=OFF, WRT1=OFF, WRT2=OFF, WRT3=OFF

//static __code char __at __CONFIG7H c7h = 0x40;
#pragma config EBTRB=OFF

//static __code char __at __CONFIG7L c7l = 0x0F;
#pragma config EBTR0=OFF, EBTR1=OFF, EBTR2=OFF, EBTR3=OFF

// add some data to the end to verify if dumping works
//code short at 0x800  test2 = 0x1234;
//code short at 0x7FFE test1 = 0x5678;
//__code short __at 0x7FFE test = 0xBEEF;

#define LED_GREEN	PORTBbits.RB1
#define LED_RED		PORTBbits.RB2

typedef __code unsigned char *CODEPTR;

void
main ()
{
  CODEPTR c;
  TRISB = 0b11111001; // Set RB1, RB2 to output
  TRISCbits.TRISC6 = 0;

  // Globally disable IRQs
  INTCONbits.GIE = 0;

  // Baud rate to 115200 Baud (FOSC = 20MHz)
  SPBRG = 10; // SPBRG = ((FOSC / DesiredBaudRate) / 16) – 1
    
  // 8-bit asynchronous TX + high speed mode
  TXSTA = 0b00000100;

  // Initialize USART peripheral
  RCSTAbits.SPEN = 1;

  // Enable USART peripheral
  TXSTAbits.TXEN = 1;
    
  // Light red LED to indicate dump process
  LED_RED = 0;
  LED_GREEN = 1;

  c = 0;
  do
  {
      TXREG = *c++;
      while (!TXSTAbits.TRMT);  // Wait until Transmit Shift Register is empty
      //ClrWdt ();
  }
  while (c != (CODEPTR) 0x8000);

  // Turn off red LED
  // Light green LED to indicate stopped dump process
  LED_RED = 1;
  LED_GREEN = 0;

  // Sit idle
  for (;;);
    //ClrWdt ();
}
