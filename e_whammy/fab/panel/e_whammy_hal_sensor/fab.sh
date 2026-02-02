kikit panelize \
    --layout 'grid; rows: 2; cols: 5; space: 2mm' \
    --tabs 'fixed; hwidth: 15mm; vwidth: 5mm; vcount: 1; hcount: 1' \
    --cuts vcuts \
    --post 'millradius: 1mm' \
    --framing 'frame; width: 5mm; space: 3mm; cuts: both' \
    --tooling '3hole; hoffset: 2.5mm; voffset: 2.5mm; size: 1.5mm' \
    --fiducials '3fid; hoffset: 5mm; voffset: 2.5mm; coppersize: 2mm; opening: 2mm;' \
    --text 'simple; text: JLCJLCJLCJLC; anchor: mt; voffset: 2.5mm; hjustify: center; vjustify: center;' \
    ../../../e_whammy_hal_sensor.kicad_pcb e_whammy_hal_sensor_panel.kicad_pcb

kikit fab jlcpcb --no-drc --assembly --schematic ../../../e_whammy_hal_sensor.kicad_sch e_whammy_hal_sensor_panel.kicad_pcb .
mv gerbers.zip e_whammy_hal_sensor_gerbers.zip
