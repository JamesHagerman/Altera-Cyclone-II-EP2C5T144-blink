# Blink for Altera Cyclone II EP2C5T144 Mini Development board

This is a very tiny Quartus II project that shows the bare minimum configuration you need to be able to design FPGA logic programs, run them on the chip, and even store them in the on board EEPROM (If your board isn't the cheapest version that has no EPCS4 memory chip on the bottom of it).

I'll write more here when I get a chance. Basically, you need a USB Blaster clone (I prefer the white cased one because it allows Device Discovery), and a little understanding of FPGAs and what exactly you're doing.

There are some good tutorials around on the web but I'll throw what I can in here when I get the chance.

## Basic compile

`ctrl-l` (that's an L)

## Basic pin assignment

`Assignments -> Pin Planner` then change the `Location` field. Recompile after you change pin assignments

## Basic programming

`Tools -> Programmer` then select you hardware, then press `Device Detect` OR (if device detect stalls for 30 seconds) just manually add the `EP2C5T144` device

## Programming directly to the config memory

This is the pain in the butt one that I'll write up later. You need to convert the `.pom` output from your compile step to a `.jic` file first.

Once that's done, `Tools -> Programmer` then make sure you go to `View -> Show Device Tree` then... so on

Actually, all of this is kinda described in: [https://www.altera.com/en_US/pdfs/literature/an/an370.pdf](https://www.altera.com/en_US/pdfs/literature/an/an370.pdf)
