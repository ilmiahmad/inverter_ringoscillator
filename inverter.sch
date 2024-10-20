v {xschem version=3.4.6RC file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 20 -50 20 40 {
lab=out}
N -110 -80 -20 -80 {
lab=in}
N -110 -80 -110 -20 {
lab=in}
N 20 -150 20 -110 {
lab=vvdd}
N 20 100 20 140 {
lab=VGND}
N -110 70 -20 70 {
lab=in}
N -110 -20 -110 70 {
lab=in}
N 20 -10 80 -10 {
lab=out}
N 20 -80 100 -80 {
lab=vvdd}
N 100 -150 100 -80 {
lab=vvdd}
N 20 -150 100 -150 {
lab=vvdd}
N 20 70 100 70 {
lab=VGND}
N 100 70 100 140 {
lab=VGND}
N 20 140 100 140 {
lab=VGND}
C {sky130_fd_pr/nfet_01v8.sym} 0 70 0 0 {name=M1
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
C {sky130_fd_pr/pfet_01v8.sym} 0 -80 0 0 {name=M2
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
C {devices/ipin.sym} -110 0 0 0 {name=p1 lab=in}
C {devices/opin.sym} 80 -10 0 0 {name=p2 lab=out}
C {devices/iopin.sym} 100 -150 0 0 {name=p3 lab=vvdd
}
C {devices/iopin.sym} 100 130 0 0 {name=p4 lab=vgnd
}
