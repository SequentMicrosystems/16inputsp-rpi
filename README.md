[![16inputsp-rpi](pictures/sequent.jpg)](https://www.sequentmicrosystems.com )

# 16inputsp-rpi

This is the command line and python library to control the Sequent Microsystems 16-Inputs Card prototype for Raspberry PI. This 8 layers stackable card contains 16 optically isolated digital inputs with reverse polarity protection.
This software works with series zero cards, for current hardware version please use https://github.com/SequentMicrosystems/16inputs-rpi

For using this card please enable Raspberry Pi I2C communication
```bash
~$ sudo raspi-config
```

## Usage

```bash
~$ git clone https://github.com/SequentMicrosystems/16inputsp-rpi.git
~$ cd 16inputsp-rpi/
~/16inputsp-rpi$ sudo make install
```

Now you can access all the functions of the 16-Inputs board through the command "16inputs". Use -h option for help:
```bash
~$ 16inputsp -h
```

If you clone the repository any update can be made with the following commands:

```bash
~$ cd 16inputsp-rpi/  
~/16inputsp-rpi$ git pull
~/16inputsp-rpi$ sudo make install
```  

## [Python](https://github.com/SequentMicrosystems/16inputsp-rpi/tree/main/python)
