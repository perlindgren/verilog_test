all: sv

sv: adder.sv tb_adder.sv 
	verilator --binary adder.sv tb_adder.sv --top-module tb_adder
	gtkwave -a adder.gtkw waveform.vcd 


