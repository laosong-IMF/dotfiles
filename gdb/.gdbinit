# connect to the J-Link gdb server
target remote 192.168.10.70:2331
#target remote COM3

# Set gdb server to little endian
monitor endian little

# Set JTAG speed to 1000 kHz
monitor speed 1000

#monitor flash device = "MK60DN512xxx10 (allow security)"
#monitor flash device = MK60DN512xxx10
monitor flash device = MK64FN1M0xxx12
#monitor flash device = MK60FN1M0xxx12
#monitor flash device = MK70FN1M0xxx12
monitor flash breakpoints = 1
monitor flash download = 1

# Reset the chip to get to a known state.
# Reset the target
monitor reset
#monitor sleep 100

#
# CPU core initialization (to be done by user)
#
# Set auto JTAG speed
#monitor speed auto

# Load the program executable called "image.elf"
# load image.elf

# Initializing PC and stack pointer
#monitor reg r13 = (0x00000000)
#monitor reg pc = (0x00000004)
#monitor reg r13 = (0x00020000)
#monitor reg pc = (0x00020004)
#monitor reg pc = (0x00020419)
