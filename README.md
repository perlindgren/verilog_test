# Testing out some verilog

## Compiling using Verilator

```shell
verilator --cc adder.sv
```

```shell
verilator --binary adder.sv tb_adder.sv --top-module tb_adder
```

To compile and run `gtkwave` with all signals viewed.
 
```shell
make
```
