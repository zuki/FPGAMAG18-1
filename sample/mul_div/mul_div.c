#include <stdio.h>

#define UART_STATUS (0x80000000+0x00)
#define UART_INTEN  (0x80000000+0x04)
#define UART_TXBUF  (0x80000000+0x08)
#define UART_RXBUF  (0x80000000+0x0C)

#define UART_TXFULL_MASK  (0x0300)
#define UART_RXEMPTY_MASK (0x0001)

void put_c(char c)
{
  while(((*(volatile int *)(UART_STATUS)) & UART_TXFULL_MASK) > 0);
  // Txバッファへの書込
  *(volatile int *)(UART_TXBUF) = c;
}

void print_int(int s)
{
  int i;
  char c;
  
  /* Hexを1文字ずつ出力する */
  for (i = 0; i < 8; i++) {
    c = (s >> (28 - (4 * i))) & 0x0f;
    if( c >= 10 ){
      /* ASCIIコードのa〜f */
      c = c - 10 + 0x61;
    } else {
      /* ASCIIコードの0〜9 */
      c += 0x30;
    }
    put_c(c);
  }

  put_c('\r');
  put_c('\n');

}

int main(void)
{
  int s, t, x, y, z, i;
  char c;

  x = 15;
  y = 10;
  z = 2;
  print_int((x - y) / z);
  print_int((x - y) % z);

  while(1);

  return 0;
}
