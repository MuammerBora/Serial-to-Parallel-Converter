# Serial-to-Parallel-Converter
Verilog implementation and testbench of an 8-bit Serial-to-Parallel Converter using D Flip-Flops. (Computer Architecture and Organization Project)
## Installation and Simulation Procedure

To run the simulation and view the waveforms, follow these steps:

1. **Prerequisites:** Ensure you have [Icarus Verilog](http://iverilog.icarus.com/) and [GTKWave](http://gtkwave.sourceforge.net/) installed on your system.
2. **Download:** Clone this repository or download the `.v` files directly to a local folder.
3. **Compile:** Open your terminal/command prompt in the project folder and run:
   `iverilog -o myProject.out serial_to_parallel.v tb_serial_to_parallel.v`
4. **Simulate:** Run the generated output file to create the waveform data:
   `vvp myProject.out`
5. **View Waveforms:** Open the generated `.vcd` file using GTKWave:
   `gtkwave waves.vcd`
