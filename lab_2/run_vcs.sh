#!/usr/bin/env bash
set -e
vcs -full64 -timescale=1ns/10ps TB_TOP.v top.v datapath.v control_unit.v -R -kdb -lca -debug_access+all -l sim.log
