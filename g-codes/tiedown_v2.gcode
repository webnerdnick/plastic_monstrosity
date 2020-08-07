%
; tiedown_v2
G90
G17
G21
G28 G91 Z0
G90

; Bore1
M0
T1
S5000 M3
M106
G0 X-36.884 Y0.115 F1000
G0 Z15
G1 Z1
G1 Z-0.365
G19 G3 Y0.75 Z-1 J0.635
G1 Y1.067
G17 G3 X-37.519 Y1.702 I-0.635
G3 Y-1.948 Z-1.5 J-1.825
G3 Y1.702 Z-2 J1.825
G3 Y-1.948 Z-2.5 J-1.825
G3 Y1.702 Z-3 J1.825
G3 Y-1.948 Z-3.5 J-1.825
G3 Y1.702 Z-4 J1.825
G3 Y-1.948 Z-4.5 J-1.825
G3 Y1.702 Z-5 J1.825
G3 Y-1.948 Z-5.5 J-1.825
G3 Y1.702 Z-6 J1.825
G3 Y-1.948 Z-6.5 J-1.825
G3 Y1.702 Z-7 J1.825
G3 Y-1.948 Z-7.5 J-1.825
G3 Y1.702 Z-8 J1.825
G3 Y-1.948 Z-8.5 J-1.825
G3 Y1.702 Z-9 J1.825
G3 Y-1.948 Z-9.5 J-1.825
G3 Y1.702 Z-10 J1.825
G3 Y-1.948 Z-10.5 J-1.825
G3 Y1.702 Z-11 J1.825
G3 Y-1.948 J-1.825
G3 Y1.702 J1.825
G3 X-38.154 Y1.067 J-0.635
G1 Y0.75
G19 G2 Y0.115 Z-10.365 K0.635
G1 Z5
G1 X37.879 Y0.237
G1 Z1
G1 Z-0.365
G3 Y0.873 Z-1 J0.635
G1 Y1.19
G17 G3 X37.244 Y1.825 I-0.635
G3 Y-1.825 Z-1.5 J-1.825
G3 Y1.825 Z-2 J1.825
G3 Y-1.825 Z-2.5 J-1.825
G3 Y1.825 Z-3 J1.825
G3 Y-1.825 Z-3.5 J-1.825
G3 Y1.825 Z-4 J1.825
G3 Y-1.825 Z-4.5 J-1.825
G3 Y1.825 Z-5 J1.825
G3 Y-1.825 Z-5.5 J-1.825
G3 Y1.825 Z-6 J1.825
G3 Y-1.825 Z-6.5 J-1.825
G3 Y1.825 Z-7 J1.825
G3 Y-1.825 Z-7.5 J-1.825
G3 Y1.825 Z-8 J1.825
G3 Y-1.825 Z-8.5 J-1.825
G3 Y1.825 Z-9 J1.825
G3 Y-1.825 Z-9.5 J-1.825
G3 Y1.825 Z-10 J1.825
G3 Y-1.825 Z-10.5 J-1.825
G3 Y1.825 Z-11 J1.825
G3 Y-1.825 J-1.825
G3 Y1.825 J1.825
G3 X36.609 Y1.19 J-0.635
G1 Y0.873
G19 G2 Y0.237 Z-10.365 K0.635
G1 Z15
G17
M107

; 2D Contour1
G0 X-46.601 Y17.58 F1000
G1 Z15
G1 Z4
G1 Z3 F333.33
G1 Z-3.365
G19 G2 Y16.945 Z-4 J-0.635 F1000
G1 Y16.31
G17 G3 X-45.966 Y15.675 I0.635
G1 X47
G2 X53.175 Y9.5 J-6.175
G1 Y-9.5
G2 X47 Y-15.675 I-6.175
G1 X-47
G2 X-53.175 Y-9.5 J6.175
G1 Y9.5
G2 X-47 Y15.675 I6.175
G1 X-45.966
G3 X-45.331 Y16.31 J0.635
G1 Y16.945
G19 G3 Y17.58 Z-3.365 K0.635
G1 Z5
G1 X-46.601
G1 Z4
G1 Z0 F333.33
G1 Z-6.365
G2 Y16.945 Z-7 J-0.635 F1000
G1 Y16.31
G17 G3 X-45.966 Y15.675 I0.635
G1 X47
G2 X53.175 Y9.5 J-6.175
G1 Y-9.5
G2 X47 Y-15.675 I-6.175
G1 X-47
G2 X-53.175 Y-9.5 J6.175
G1 Y9.5
G2 X-47 Y15.675 I6.175
G1 X-45.966
G3 X-45.331 Y16.31 J0.635
G1 Y16.945
G19 G3 Y17.58 Z-6.365 K0.635
G1 Z5
G1 X-46.601
G1 Z4
G1 Z-3 F333.33
G1 Z-9.365
G2 Y16.945 Z-10 J-0.635 F1000
G1 Y16.31
G17 G3 X-45.966 Y15.675 I0.635
G1 X47
G2 X53.175 Y9.5 J-6.175
G1 Y-9.5
G2 X47 Y-15.675 I-6.175
G1 X-47
G2 X-53.175 Y-9.5 J6.175
G1 Y9.5
G2 X-47 Y15.675 I6.175
G1 X-45.966
G3 X-45.331 Y16.31 J0.635
G1 Y16.945
G19 G3 Y17.58 Z-9.365 K0.635
G1 Z5
G1 X-46.601
G1 Z4
G1 Z-6 F333.33
G1 Z-10.365
G2 Y16.945 Z-11 J-0.635 F1000
G1 Y16.31
G17 G3 X-45.966 Y15.675 I0.635
G1 X47
G2 X53.175 Y9.5 J-6.175
G1 Y-9.5
G2 X47 Y-15.675 I-6.175
G1 X-47
G2 X-53.175 Y-9.5 J6.175
G1 Y9.5
G2 X-47 Y15.675 I6.175
G1 X-45.966
G3 X-45.331 Y16.31 J0.635
G1 Y16.945
G19 G3 Y17.58 Z-10.365 K0.635
G1 Z15
G17
G28 G91 Z0
G90
G28 G91 X0 Y0
G90
%