onerror {exit -code 1}
vlib work
vlog -work work high_pass_transposed_graph.vo
vlog -work work Waveform.vwf.vt
vsim -novopt -c -t 1ps -L cycloneive_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.high_pass_transposed_graph_vlg_vec_tst -voptargs="+acc"
vcd file -direction high_pass_transposed_graph.msim.vcd
vcd add -internal high_pass_transposed_graph_vlg_vec_tst/*
vcd add -internal high_pass_transposed_graph_vlg_vec_tst/i1/*
run -all
quit -f
