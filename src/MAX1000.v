module MAX1000
(
  input        CLK12M,
  input        USER_BTN,

  output       UART_TXD,
  input        UART_RXD,

  output [7:0] LED

);

  wire [31:0] gpio_i, gpio_o;
  wire   gpio_ot;
  assign LED = (gpio_ot) ? {4'b0, gpio_o[3:0]} : 7'dz;
  wire CLK48M;

  pll pll_inst (
    .inclk0 ( CLK12M ),
    .c0     ( CLK48M )
  );

  fmrv32im_max1000 u_fmrv32im_max1000 (
        .clk_clk       (CLK48M),
        .reset_reset_n (USER_BTN),
        .uart_gpio_i   (32'd0),
        .uart_gpio_o   (gpio_o),
        .uart_gpio_ot  (gpio_ot),
        .uart_uart_txd (UART_TXD),
        .uart_uart_rxd (UART_RXD)
  );
endmodule
