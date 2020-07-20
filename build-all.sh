  #!/bin/bash
UNO_PID=0x0001
# Mega 2560 PID:
MEGA2560_PID=0x0010
# Mega ADK pid:
MEGAADK_PID=0x003f
mkdir -p out
make MCU=atmega16u2 ARDUINO_MODEL_PID=${UNO_PID}
cp Arduino-usbserial.hex out/arduino-uno-usb-atmega16u2-16000000.hex
make clean
make MCU=at90usb82 ARDUINO_MODEL_PID=${UNO_PID}
cp Arduino-usbserial.hex out/arduino-uno-usb-at90usb82-16000000.hex
make clean

make MCU=atmega16u2 ARDUINO_MODEL_PID=${MEGA2560_PID}
cp Arduino-usbserial.hex out/arduino-mega2560-usb-at90usb82-16000000.hex
make clean
make MCU=at90usb82 ARDUINO_MODEL_PID=${MEGA2560_PID}
cp Arduino-usbserial.hex out/arduino-mega2560-usb-atmega16u2-16000000.hex
make clean

make MCU=atmega16u2 ARDUINO_MODEL_PID=${MEGAADK_PID}
cp Arduino-usbserial.hex out/arduino-megaadk-usb-at90usb82-16000000.hex
make clean
make MCU=at90usb82 ARDUINO_MODEL_PID=${MEGAADK_PID}
cp Arduino-usbserial.hex out/arduino-megaadk-usb-atmega16u2-16000000.hex
make clean