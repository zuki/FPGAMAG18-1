CC = riscv32-unknown-elf-gcc
LD = riscv32-unknown-elf-ld
CFLAGS = -march=rv32im -O0
LDFLAGS = -L/usr/local/riscv32im/riscv32-unknown-elf/lib -Tlink.ld -nostartfiles -static
LIBS = -lc
OBJS = $(PROGRAM).o start.o
PROGRAM = mul_div
OBJCOPY = riscv32-unknown-elf-objcopy
OBJDUMP = riscv32-unknown-elf-objdump

$(PROGRAM): $(OBJS)
	$(LD) $(OBJS) $(LIBS) $(LDFLAGS) -o $(PROGRAM)
	$(OBJCOPY) -O binary $(PROGRAM) $(PROGRAM).bin
	$(OBJDUMP) -s -S $(PROGRAM) > $(PROGRAM).dump
	hexdump -v -e '1/4 "%08x" "\n"' $(PROGRAM).bin > $(PROGRAM).hex
	../bin2mif -4 $(PROGRAM)
	cp $(PROGRAM).mif ../../romdata/max1000.mif

start.o: start.S
	$(CC) $(CFLAGS) -c -o start.o start.S

$(PROGRAM).o: $(PROGRAM).c
	$(CC) $(CFLAGS) -c -o $(PROGRAM).o $(PROGRAM).c

all: $(PROGRAM)

clean:
	rm $(PROGRAM) *.o $(PROGRAM).dump $(PROGRAM).hex $(PROGRAM).bin $(PROGRAM).mif
