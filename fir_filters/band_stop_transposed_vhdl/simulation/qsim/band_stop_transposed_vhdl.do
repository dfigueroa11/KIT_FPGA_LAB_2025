onerror {exit -code 1}
vlib work
vlog -work work band_stop_transposed_vhdl.vo
vlog -work work Waveform.vwf.vt
vsim -novopt -c -t 1ps -L cycloneive_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.band_stop_transposed_vhdl_vlg_vec_tst -voptargs="+acc"
vcd file -direction band_stop_transposed_vhdl.msim.vcd
vcd add -internal band_stop_transposed_vhdl_vlg_vec_tst/*
vcd add -internal band_stop_transposed_vhdl_vlg_vec_tst/i1/*
run -all
quit -f
