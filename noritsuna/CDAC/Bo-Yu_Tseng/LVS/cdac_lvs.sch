v {xschem version=3.4.5 file_version=1.2

* Copyright 2022 GlobalFoundries PDK Authors
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*     https://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.

}
G {}
K {}
V {}
S {}
E {}
N 350 -550 350 -490 {
lab=VDD}
N 350 -550 540 -550 {
lab=VDD}
N 540 -550 540 -500 {
lab=VDD}
N 540 -440 540 -390 {
lab=GND}
N 350 -390 540 -390 {
lab=GND}
N 350 -430 350 -390 {
lab=GND}
N 330 -460 330 -410 {
lab=GND}
N 330 -410 350 -410 {
lab=GND}
C {devices/title.sym} 160 -30 0 0 {name=l5 author="GlobalFoundries PDK Authors"}
C {cap_mim_2p0fF_lvs.sym} 540 -470 0 0 {name=C2
W=5e-6
L=5e-6
model=cap_mim_2f0_m4m5_noshield}
C {ppolyf_u_lvs.sym} 350 -460 0 0 {name=R1
W=1e-6
L=8e-6
model=ppolyf_u
m=1}
C {devices/iopin.sym} 350 -550 0 1 {name=p3 lab=VDD}
C {devices/iopin.sym} 350 -390 0 1 {name=p4 lab=VSS}
