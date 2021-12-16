#
# (C) Milosch Meriac <meriac@openpcd.org>
#

PROJECT=dumper
#PROJECT=dumper-eeprom
CPU=18f452

SDCC_ROOT=/usr/local/bin/sdcc
#LIB=$(SDCC_ROOT)/lib/pic16
LIB_ROOT=/usr/local/Cellar/sdcc/4.0.0/share/sdcc/
LIB=$(LIB_ROOT)/lib/pic16
LIB_CPU=$(LIB_ROOT)/non-free/lib/pic16

obj/$(PROJECT).hex: obj/$(PROJECT).o
	gplink -c -o $@ -m $^ $(LIB_CPU)/libdev$(CPU).lib $(LIB)/libsdcc.lib

obj/$(PROJECT).o: obj/$(PROJECT).asm
	gpasm -c $<

obj/$(PROJECT).asm: $(PROJECT).c
	sdcc --use-non-free -o $@ -S -mpic16 -p$(CPU) $<

#flash: obj/$(PROJECT).hex
#	cp $^ ~/Share/HID/dumper/

clean:
	rm -f obj/$(PROJECT).o obj/$(PROJECT).lst obj/$(PROJECT).asm obj/$(PROJECT).hex obj/$(PROJECT).map obj/$(PROJECT).cod obj/$(PROJECT).cof
