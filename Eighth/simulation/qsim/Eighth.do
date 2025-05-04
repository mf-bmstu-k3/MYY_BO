onerror {exit -code 1}
vlib work
vlog -work work Eighth.vo
vlog -work work test_alu_for_4op.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiv_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.control_unit_for_4op_BO_vlg_vec_tst -voptargs="+acc"
vcd file -direction Eighth.msim.vcd
vcd add -internal control_unit_for_4op_BO_vlg_vec_tst/*
vcd add -internal control_unit_for_4op_BO_vlg_vec_tst/i1/*
run -all
quit -f
