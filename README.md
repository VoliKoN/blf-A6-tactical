# blf-A6-tactical
Tactical blf A6 firmware

## Building hex (using docker)
```
./build.sh
```
___
## Flashing to flashlight (using Arduino as ISP)
### Test connection
```
avrdude -v -p attiny13 -c stk500v1 -P /dev/ttyACM1 -b 19200 -n
```

### Dump hex from flashlight
```
avrdude -v -p attiny13 -c stk500v1 -P /dev/ttyACM1 -b 19200 -u -Uflash:r:flash-dump.hex:i -Ueeprom:r:eeprom-dump.hex:i -Ulfuse:r:lfuse-dump.hex:i -Uhfuse:r:hfuse-dump.hex:i
```

### upload firmware to flashlight
```
avrdude -v -p attiny13 -c stk500v1 -P /dev/ttyACM1 -b 19200 -u -Uflash:w:blf-a6.hex -Ulfuse:w:0x75:m -Uhfuse:w:0xFF:m
```
