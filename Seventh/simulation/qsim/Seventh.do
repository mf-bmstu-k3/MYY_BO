onerror {exit -code 1}
vlib work
vlog -work work Seventh.vo
vlog -work work test_alu_2op.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiv_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.ctrl_un_BO_vlg_vec_tst -voptargs="+acc"
vcd file -direction Seventh.msim.vcd
vcd add -internal ctrl_un_BO_vlg_vec_tst/*
vcd add -internal ctrl_un_BO_vlg_vec_tst/i1/*
run -all
quit -f
