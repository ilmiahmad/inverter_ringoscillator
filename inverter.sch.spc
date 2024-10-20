** sch_path: /home/ahmadjabar/project/inverter/inverter.sch
.subckt inverter vvdd out in vgnd
*.PININFO in:I out:O vvdd:B vgnd:B
XM1 out in vgnd vgnd sky130_fd_pr__nfet_01v8 L=0.15 W=1 nf=1 m=1
XM2 out in vvdd vvdd sky130_fd_pr__pfet_01v8 L=0.15 W=1 nf=1 m=1
.ends
.end
