# Dedicated Microprocessor Verilog Sources

This zip contains the Verilog code extracted and cleaned from the lecture slides for the dedicated microprocessor example.

## Files

- `datapath.v` - datapath module with A register, B register, equal comparator, and output buffer logic
- `control_unit.v` - FSM control unit for states 0 to 5
- `top.v` - top module connecting datapath and control unit
- `TB_TOP.v` - testbench for the top module
- `run_vcs.sh` - VCS compile/run command
- `run_iverilog.sh` - Icarus Verilog compile/run command

## VCS command

```bash
vcs -full64 -timescale=1ns/10ps TB_TOP.v top.v datapath.v control_unit.v -R -kdb -lca -debug_access+all -l sim.log
```

## Icarus Verilog command

```bash
iverilog -o sim.out TB_TOP.v top.v datapath.v control_unit.v
vvp sim.out
gtkwave TB_top.vcd
```

## Note

The slide logic maps `Muxsel == 0` to `8'd13` and `Muxsel == 1` to `8'd8` in the datapath. Therefore, the simulation follows the lecture slide code behavior.
