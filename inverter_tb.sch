v {xschem version=3.4.6RC file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 0 -110 0 -20 {
lab=out}
N -130 -140 -40 -140 {
lab=in}
N -130 -140 -130 -80 {
lab=in}
N 0 -210 -0 -170 {
lab=#net1}
N -300 -210 -0 -210 {
lab=#net1}
N -300 -210 -300 -130 {
lab=#net1}
N -300 -70 -300 80 {
lab=GND}
N -300 80 0 80 {
lab=GND}
N 0 40 0 80 {
lab=GND}
N -130 10 -40 10 {
lab=in}
N -130 -80 -130 10 {
lab=in}
N -210 -70 -210 -40 {
lab=in}
N -210 -70 -130 -70 {
lab=in}
N -210 20 -210 80 {
lab=GND}
N 0 -70 60 -70 {
lab=out}
N 0 -140 80 -140 {
lab=#net1}
N 80 -210 80 -140 {
lab=#net1}
N 0 -210 80 -210 {
lab=#net1}
N 0 10 80 10 {
lab=GND}
N 80 10 80 80 {
lab=GND}
N 0 80 80 80 {
lab=GND}
C {sky130_fd_pr/nfet_01v8.sym} -20 10 0 0 {name=M1
L=0.15
W=1
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} -20 -140 0 0 {name=M2
L=0.15
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {devices/vsource.sym} -300 -100 0 0 {name=V1 value=1.8 savecurrent=false}
C {devices/lab_pin.sym} -130 -110 0 0 {name=p1 sig_type=std_logic lab=in
}
C {devices/gnd.sym} -300 80 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} -210 -10 0 0 {name=V2 value=1.8 savecurrent=false}
C {devices/lab_pin.sym} 60 -70 0 1 {name=p2 sig_type=std_logic lab=out}
C {devices/code.sym} -520 -100 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {devices/code_shown.sym} -530 -340 0 0 {name=s1 only_toplevel=false value="
.option wnflag=0
.option savecurrents
.control
save all
dc v2 0 1.8 0.01
plot in out
op
.endc
"}
