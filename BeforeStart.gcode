G90 ; use absolute coordinates
M83 ; extruder relative mode
M140 S[bed_temperature_initial_layer] ; set final bed temp
M104 S[nozzle_temperature_initial_layer] ; set final nozzle temp
M190 S[bed_temperature_initial_layer] ; wait for bed temp to stabilize
;G28 ; home all axis
;G29 S0; save the mesh to slot 0
G29 L0 ; load a valid mesh from slot 0
G29 A; activate UBL
G1 Z2.0 F3000 ; Move Z Axis up little to prevent scratching of Heat Bed
G1 X0.1 Y20 Z0.2 F5000.0 ; Move to start position
M109 S[nozzle_temperature_initial_layer] ; wait for nozzle temp to stabilize
M300 P250 ; play chime to indicate print starting
G1 X0.1 Y200.0 Z0.2 F1500.0 E15 ; Draw the first line
G1 X0.4 Y200.0 Z0.2 F5000.0 ; Move to side a little
G1 X0.4 Y20 Z0.2 F1500.0 E30 ; Draw the second line
G1 Z2.0 F3000 ; Move Z Axis up little to prevent scratching of Heat Bed
G1 X5.0 Y35 Z0.2 F5000.0 ; Blob be gone
G92 E0; Reset Extruder