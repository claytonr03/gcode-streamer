;FLAVOR:Marlin
;TIME:11021
;Filament used: 9.29272m
;Layer height: 0.2
;MINX:46.5
;MINY:54
;MINZ:0.2
;MAXX:173.5
;MAXY:166
;MAXZ:5
;Generated with Cura_SteamEngine 4.4.0
M82 ;absolute extrusion mode
; Ender 3 Custom Start G-code
;M140 S60 ; Set Heat Bed temperature
;M190 S60 ; Wait for Heat Bed temperature
;M104 S200 ; Set Extruder temperature
;G28 ; Home all axes
;G29 ; Auto bed-level (BL-Touch)
;G92 E0 ; Reset Extruder
;M104 S200 ; Set Extruder temperature
;G1 X0.1 Y0 Z4 F5000.0 ; Move to start position
;M109 S200 ; Wait for Extruder temperature
;G1 E19 F1600 ; prime nozzle
;G0 X60 F6000 ; wipe nozzle
;G0 X20 F6000 ; wipe nozzle
;G0 X120 F6000 ; wipe nozzle
;G92 E0 ; Reset Extruder
;G1 Z2.0 F3000 ; Move Z Axis up little to prevent scratching of Heat Bed
;; End of custom start GCode
;G92 E0
G92 E0
G1 F1500 E-6.5
;LAYER_COUNT:25
;LAYER:0
M107
G0 F6000 X50.386 Y56.627 Z0.2
;TYPE:SKIRT
G1 F1500 E0
G1 F1200 X51.126 Y56.051 E0.03119
G1 X51.912 Y55.539 E0.06239
G1 X52.739 Y55.097 E0.09358
G1 X53.601 Y54.727 E0.12478
G1 X54.491 Y54.431 E0.15597
G1 X55.403 Y54.213 E0.18716
G1 X56.33 Y54.072 E0.21835
G1 X57.201 Y54.013 E0.24738
G1 X57.522 Y54.004 E0.25806
G1 X57.83 Y54 E0.26831
G1 X161.793 Y54 E3.72613
G1 X161.951 Y54.001 E3.73139
G1 X162.649 Y54.011 E3.75461
G1 X163.585 Y54.065 E3.78579
G1 X164.513 Y54.197 E3.81697
G1 X165.427 Y54.409 E3.84817
G1 X166.319 Y54.698 E3.87936
G1 X167.184 Y55.061 E3.91056
G1 X168.014 Y55.497 E3.94174
G1 X168.805 Y56.002 E3.97296
G1 X169.549 Y56.573 E4.00415
G1 X170.242 Y57.205 E4.03534
G1 X170.879 Y57.893 E4.06653
G1 X171.454 Y58.634 E4.09772
G1 X171.965 Y59.42 E4.12891
G1 X172.407 Y60.248 E4.16012
G1 X172.776 Y61.11 E4.19131
G1 X173.071 Y62 E4.2225
G1 X173.289 Y62.912 E4.25368
G1 X173.429 Y63.84 E4.2849
G1 X173.487 Y64.701 E4.3136
G1 X173.496 Y65.021 E4.32425
G1 X173.5 Y65.33 E4.33453
G1 X173.5 Y154.264 E7.29248
G1 X173.499 Y154.4 E7.29701
G1 X173.49 Y155.127 E7.32119
G1 X173.439 Y156.064 E7.3524
G1 X173.307 Y156.992 E7.38357
G1 X173.098 Y157.906 E7.41476
G1 X172.811 Y158.799 E7.44596
G1 X172.449 Y159.665 E7.47718
G1 X172.015 Y160.496 E7.50836
G1 X171.511 Y161.287 E7.53955
G1 X170.942 Y162.032 E7.57073
G1 X170.311 Y162.727 E7.60195
G1 X169.624 Y163.365 E7.63314
G1 X168.885 Y163.942 E7.66432
G1 X168.099 Y164.454 E7.69552
G1 X167.273 Y164.897 E7.72669
G1 X166.411 Y165.269 E7.75792
G1 X165.522 Y165.565 E7.78908
G1 X164.61 Y165.785 E7.82029
G1 X163.683 Y165.926 E7.85147
G1 X162.799 Y165.987 E7.88095
G1 X162.478 Y165.996 E7.89163
G1 X162.17 Y166 E7.90187
G1 X58.207 Y166 E11.3597
G1 X58.065 Y165.999 E11.36442
G1 X57.367 Y165.99 E11.38764
G1 X56.431 Y165.938 E11.41882
G1 X55.502 Y165.806 E11.45002
G1 X54.588 Y165.596 E11.48122
G1 X53.695 Y165.309 E11.51241
G1 X52.83 Y164.946 E11.54361
G1 X51.999 Y164.512 E11.5748
G1 X51.208 Y164.008 E11.60599
G1 X50.463 Y163.438 E11.63719
G1 X49.769 Y162.807 E11.66839
G1 X49.132 Y162.12 E11.69955
G1 X48.555 Y161.38 E11.73076
G1 X48.043 Y160.594 E11.76196
G1 X47.6 Y159.767 E11.79316
G1 X47.229 Y158.906 E11.82435
G1 X46.933 Y158.016 E11.85554
G1 X46.714 Y157.104 E11.88674
G1 X46.573 Y156.177 E11.91792
G1 X46.513 Y155.288 E11.94756
G1 X46.504 Y154.955 E11.95864
G1 X46.5 Y154.658 E11.96852
G1 X46.5 Y65.674 E14.92814
G1 X46.501 Y65.525 E14.93309
G1 X46.51 Y64.86 E14.95521
G1 X46.563 Y63.924 E14.98639
G1 X46.695 Y62.995 E15.0176
G1 X46.906 Y62.081 E15.0488
G1 X47.194 Y61.189 E15.07998
G1 X47.557 Y60.324 E15.11118
G1 X47.992 Y59.493 E15.14238
G1 X48.496 Y58.703 E15.17354
G1 X49.066 Y57.958 E15.20474
G1 X49.698 Y57.264 E15.23596
G1 X50.386 Y56.627 E15.26715
G0 F6000 X50.774 Y56.823
G1 F1200 X51.51 Y56.27 E15.29777
G1 X52.291 Y55.782 E15.3284
G1 X53.111 Y55.364 E15.35901
G1 X53.965 Y55.019 E15.38964
G1 X54.845 Y54.749 E15.42026
G1 X55.745 Y54.557 E15.45087
G1 X56.659 Y54.443 E15.4815
G1 X57.212 Y54.413 E15.49992
G1 X57.533 Y54.404 E15.5106
G1 X57.83 Y54.4 E15.52048
G1 X161.793 Y54.4 E18.97831
G1 X161.945 Y54.401 E18.98336
G1 X162.643 Y54.411 E19.00658
G1 X163.562 Y54.464 E19.0372
G1 X164.473 Y54.597 E19.06782
G1 X165.369 Y54.808 E19.09843
G1 X166.243 Y55.096 E19.12904
G1 X167.09 Y55.459 E19.15969
G1 X167.901 Y55.894 E19.1903
G1 X168.671 Y56.398 E19.22091
G1 X169.395 Y56.967 E19.25154
G1 X170.067 Y57.597 E19.28217
G1 X170.682 Y58.282 E19.31279
G1 X171.235 Y59.018 E19.34341
G1 X171.722 Y59.799 E19.37402
G1 X172.139 Y60.62 E19.40465
G1 X172.484 Y61.474 E19.43528
G1 X172.753 Y62.354 E19.46589
G1 X172.945 Y63.255 E19.49653
G1 X173.058 Y64.168 E19.52713
G1 X173.087 Y64.712 E19.54525
G1 X173.096 Y65.032 E19.55589
G1 X173.1 Y65.33 E19.56581
G1 X173.1 Y154.264 E22.52376
G1 X173.099 Y154.395 E22.52812
G1 X173.09 Y155.122 E22.5523
G1 X173.039 Y156.041 E22.58292
G1 X172.908 Y156.953 E22.61356
G1 X172.698 Y157.849 E22.64417
G1 X172.412 Y158.724 E22.67479
G1 X172.051 Y159.571 E22.70541
G1 X171.617 Y160.383 E22.73603
G1 X171.115 Y161.155 E22.76666
G1 X170.547 Y161.88 E22.79729
G1 X169.919 Y162.553 E22.82791
G1 X169.235 Y163.169 E22.85853
G1 X168.5 Y163.723 E22.88914
G1 X167.72 Y164.212 E22.91976
G1 X166.9 Y164.631 E22.95039
G1 X166.047 Y164.977 E22.981
G1 X165.167 Y165.248 E23.01163
G1 X164.267 Y165.441 E23.04224
G1 X163.353 Y165.556 E23.07288
G1 X162.788 Y165.587 E23.0917
G1 X162.467 Y165.596 E23.10238
G1 X162.17 Y165.6 E23.11226
G1 X58.207 Y165.6 E26.57008
G1 X58.07 Y165.599 E26.57464
G1 X57.372 Y165.59 E26.59786
G1 X56.453 Y165.538 E26.62847
G1 X55.542 Y165.407 E26.65909
G1 X54.646 Y165.197 E26.68969
G1 X53.771 Y164.91 E26.72032
G1 X52.924 Y164.548 E26.75096
G1 X52.112 Y164.114 E26.78158
G1 X51.341 Y163.612 E26.81218
G1 X50.616 Y163.044 E26.84281
G1 X49.943 Y162.415 E26.87345
G1 X49.328 Y161.731 E26.90405
G1 X48.774 Y160.996 E26.93466
G1 X48.286 Y160.215 E26.96529
G1 X47.867 Y159.395 E26.99592
G1 X47.521 Y158.542 E27.02653
G1 X47.251 Y157.662 E27.05715
G1 X47.058 Y156.761 E27.0878
G1 X46.944 Y155.848 E27.1184
G1 X46.913 Y155.277 E27.13742
G1 X46.904 Y154.944 E27.1485
G1 X46.9 Y154.658 E27.15801
G1 X46.9 Y65.674 E30.11763
G1 X46.901 Y65.531 E30.12239
G1 X46.91 Y64.866 E30.14451
G1 X46.962 Y63.946 E30.17516
G1 X47.094 Y63.035 E30.20577
G1 X47.305 Y62.139 E30.23639
G1 X47.592 Y61.264 E30.26702
G1 X47.955 Y60.418 E30.29763
G1 X48.389 Y59.606 E30.32826
G1 X48.892 Y58.835 E30.35888
G1 X49.461 Y58.111 E30.3895
G1 X50.089 Y57.439 E30.42009
G1 X50.774 Y56.823 E30.45074
G0 F6000 X51.162 Y57.024
G1 F1200 X51.894 Y56.494 E30.48079
G1 X52.669 Y56.031 E30.51082
G1 X53.482 Y55.638 E30.54085
G1 X54.327 Y55.318 E30.57091
G1 X55.196 Y55.075 E30.60092
G1 X56.084 Y54.909 E30.63096
G1 X57.223 Y54.813 E30.66898
G1 X57.544 Y54.804 E30.67966
G1 X57.83 Y54.8 E30.68918
G1 X161.793 Y54.8 E34.147
G1 X161.939 Y54.801 E34.15186
G1 X162.637 Y54.811 E34.17507
G1 X163.539 Y54.864 E34.20513
G1 X164.432 Y54.996 E34.23515
G1 X165.31 Y55.207 E34.26518
G1 X166.166 Y55.495 E34.29522
G1 X166.993 Y55.857 E34.32525
G1 X167.785 Y56.292 E34.3553
G1 X168.536 Y56.794 E34.38535
G1 X169.239 Y57.361 E34.41539
G1 X169.889 Y57.988 E34.44542
G1 X170.481 Y58.67 E34.47546
G1 X171.011 Y59.401 E34.50549
G1 X171.473 Y60.177 E34.53553
G1 X171.866 Y60.99 E34.56556
G1 X172.184 Y61.835 E34.59559
G1 X172.427 Y62.705 E34.62564
G1 X172.592 Y63.593 E34.65568
G1 X172.687 Y64.723 E34.69339
G1 X172.696 Y65.043 E34.70404
G1 X172.7 Y65.33 E34.71359
G1 X172.7 Y154.264 E37.67155
G1 X172.699 Y154.39 E37.67574
G1 X172.69 Y155.117 E37.69992
G1 X172.639 Y156.019 E37.72997
G1 X172.508 Y156.913 E37.76002
G1 X172.299 Y157.791 E37.79004
G1 X172.013 Y158.648 E37.82009
G1 X171.652 Y159.476 E37.85013
G1 X171.22 Y160.268 E37.88014
G1 X170.719 Y161.02 E37.91019
G1 X170.153 Y161.724 E37.94023
G1 X169.528 Y162.375 E37.97025
G1 X168.847 Y162.969 E38.00031
G1 X168.116 Y163.5 E38.03036
G1 X167.342 Y163.964 E38.06037
G1 X166.529 Y164.358 E38.09042
G1 X165.685 Y164.678 E38.12044
G1 X164.815 Y164.923 E38.1505
G1 X163.928 Y165.089 E38.18052
G1 X162.777 Y165.187 E38.21894
G1 X162.456 Y165.196 E38.22962
G1 X162.17 Y165.2 E38.23913
G1 X58.207 Y165.2 E41.69696
G1 X58.075 Y165.199 E41.70135
G1 X57.377 Y165.19 E41.72456
G1 X56.476 Y165.139 E41.75458
G1 X55.582 Y165.007 E41.78464
G1 X54.704 Y164.798 E41.81465
G1 X53.847 Y164.511 E41.84471
G1 X53.02 Y164.15 E41.87473
G1 X52.227 Y163.717 E41.90478
G1 X51.476 Y163.216 E41.9348
G1 X50.772 Y162.65 E41.96485
G1 X50.121 Y162.024 E41.99489
G1 X49.528 Y161.343 E42.02492
G1 X48.998 Y160.612 E42.05495
G1 X48.534 Y159.837 E42.085
G1 X48.14 Y159.024 E42.11504
G1 X47.82 Y158.18 E42.14507
G1 X47.576 Y157.31 E42.17512
G1 X47.41 Y156.422 E42.20516
G1 X47.313 Y155.267 E42.24372
G1 X47.304 Y154.934 E42.2548
G1 X47.3 Y154.658 E42.26398
G1 X47.3 Y65.674 E45.2236
G1 X47.301 Y65.536 E45.22819
G1 X47.31 Y64.871 E45.25031
G1 X47.362 Y63.969 E45.28036
G1 X47.494 Y63.076 E45.31038
G1 X47.704 Y62.198 E45.34041
G1 X47.991 Y61.341 E45.37047
G1 X48.353 Y60.514 E45.40049
G1 X48.786 Y59.722 E45.43051
G1 X49.288 Y58.971 E45.46056
G1 X49.855 Y58.267 E45.49062
G1 X50.481 Y57.617 E45.52064
G1 X51.162 Y57.024 E45.55067
G1 F1500 E39.05067
M140 S0
M107
G91 ;Relative positioning
G1 E-2 F2700 ;Retract a bit
G1 E-2 Z0.2 F2400 ;Retract and raise Z
G1 X5 Y5 F3000 ;Wipe out
G1 Z10 ;Raise Z more
G90 ;Absolute positionning

G1 X0 Y220 ;Present print
M106 S0 ;Turn-off fan
M104 S0 ;Turn-off hotend
M140 S0 ;Turn-off bed

M84 X Y E ;Disable all steppers but Z

M82 ;absolute extrusion mode
M104 S0
;End of Gcode
