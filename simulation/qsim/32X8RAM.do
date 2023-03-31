onerror {quit -f}
vlib work
vlog -work work 32X8RAM.vo
vlog -work work 32X8RAM.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.testcell_vlg_vec_tst
vcd file -direction 32X8RAM.msim.vcd
vcd add -internal testcell_vlg_vec_tst/*
vcd add -internal testcell_vlg_vec_tst/i1/*
add wave /*
run -all
