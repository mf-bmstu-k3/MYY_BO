onerror {exit -code 1}
vlib work
vlog -work work Fourth.vo
vlog -work work test_alu.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiv_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.alu_vhdl_vlg_vec_tst -voptargs="+acc"
vcd file -direction Fourth.msim.vcd
vcd add -internal alu_vhdl_vlg_vec_tst/*
vcd add -internal alu_vhdl_vlg_vec_tst/i1/*
run -all
quit -f
