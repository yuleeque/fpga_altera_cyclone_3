transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/yulian/Documents/GitHub_repositories/fpga_altera_cyclone_3/01_7_seg_display/seven_seg_display.vhd}

