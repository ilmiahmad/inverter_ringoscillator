v {xschem version=3.4.6RC file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -270 -110 -270 -20 {lab=#net1}
N -270 -110 180 -110 {lab=#net1}
N 180 -110 180 -10 {lab=#net1}
N 130 -10 180 -10 {lab=#net1}
N -270 40 -270 110 {lab=GND}
N -270 110 180 110 {lab=GND}
N 180 30 180 110 {lab=GND}
N 130 30 180 30 {lab=GND}
C {devices/vsource.sym} -270 10 0 0 {name=V1 value=1.8 savecurrent=false}
C {devices/gnd.sym} -40 110 0 0 {name=l1 lab=GND}
C {devices/code.sym} -590 -75 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {devices/code_shown.sym} -630 80 0 0 {name=s1 only_toplevel=false value="
.option wnflag=0
.option savecurrents
.control
save all
tran 1ps 10ns
plot out
op
.endc
"}
C {devices/opin.sym} 130 10 0 0 {name=p1 lab=out}
C {ringosc.sym} -20 10 0 0 {name=x1}
