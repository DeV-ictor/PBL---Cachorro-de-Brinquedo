transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/Fredi/OneDrive/Documentos/MI\ -\ Projeto\ de\ Circuitos\ Digitais/PBL_2/PBL---Cachorro-de-Brinquedo/Projeto-Quartus {C:/Users/Fredi/OneDrive/Documentos/MI - Projeto de Circuitos Digitais/PBL_2/PBL---Cachorro-de-Brinquedo/Projeto-Quartus/mux_4x1.v}

