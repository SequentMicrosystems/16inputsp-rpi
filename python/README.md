# lib16inp

This is the python library to control [16- INPUTS proto card for Raspberry](https://www.sequentmicrosystems.com/), for the 16-INPUTS card use [this](https://github.com/SequentMicrosystems/16inputs-rpi/tree/main/python)

## Install

```bash
~$ sudo apt-get update
~$ sudo apt-get install build-essential python-pip python-dev python-smbus git
~$ git clone https://github.com/SequentMicrosystems/16inputsp-rpi.git
~$ cd 16inputsp-rpi/python/16inputsp/
~/16inputsp-rpi/python/16inputsp$ sudo python setup.py install
```

for Python 3.x usge replace last line with:
```bash
~/16inputsp-rpi/python/16inputsp$ sudo python3 setup.py install
```

## Update

```bash
~$ cd 16inputsp-rpi/
~/16inputsp-rpi$ git pull
~$ cd 16inputsp-rpi/python/16inputsp/
~/16inputsp-rpi/python/16inputsp$ sudo python setup.py install
```

## Usage 

Now you can import the lib16in library and use its functions. To test, read the channel 1:

```bash
~$ python
Python 2.7.9 (default, Sep 17 2016, 20:26:04)
[GCC 4.9.2] on linux2
Type "help", "copyright", "credits" or "license" for more information.
>>> import lib16inp
>>> lib16inp.readCh(1)
0
>>>
```
## [Documentation](https://github.com/SequentMicrosystems/16inputsp-rpi/blob/master/python/16inputsp/README.md). 

This library works with both Python2 and Python3
