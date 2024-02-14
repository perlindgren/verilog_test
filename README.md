# Testing out some verilog

## Comiplining using Verilator

```shell
verilator --cc adder.sv
```

```shell
verilator --binary adder.sv tb_adder.sv --top-module tb_adder.sv 
```
