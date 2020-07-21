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

This is the pain in the butt. You need to convert the `.pom` output from your compile step to a `.jic` file first. Actually, all of this is described in: [https://www.altera.com/en_US/pdfs/literature/an/an370.pdf](https://www.altera.com/en_US/pdfs/literature/an/an370.pdf)

1. Open `File -> Convert Programming File`
2. Select `JTAG Indirect Configuration File (.jic)` from the `Programming file type:` select box
3. Select `EPCS4` in the `Configuration device:` select box
4. Provide a `File name:` for the output `.jic` file
5. In the `Input files to convert` list, highlight the `SOF Data` and select `Add File...`
6. Navigate to and select the `.sof` file generated when you compiled the design (eg. `blink01.sof`). Click `Open`
7. Again, in the `Input files to convert` list, highlight the `Flash Loader` and select `Add Device...`
8. Navigate through the list of devices to find your FPGA (eg. `Cyclone II` and `EP2C5`). Click `OK` to select that device and go back to the `Convert Programming File` window
9. Click `Generate` to convert the `.sof` input to a `.jic` file


Now that you have a compiled `.jic` file, open the `Programmer` window, and select `View -> Show Device Tree` to show the details about what you're going to flash.

1. Click `Add File...` on th left hand side
2. Select your new `.jic` file
3. On the line listing your `.jic` file, check the `Program/Configure` box
4. Make sure only your new device configuration is listed.
5. Click `Start` to flash the `.jic` file to the `EPCS4` flash
6. Disconnect the USB-Blaster and power cycle the board. It should load your compiled design from the flash chip and start executing it.
