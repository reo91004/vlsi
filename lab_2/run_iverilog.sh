#!/usr/bin/env bash
set -e
iverilog -o sim.out TB_TOP.v top.v datapath.v control_unit.v
vvp sim.out
