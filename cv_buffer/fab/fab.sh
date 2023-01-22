kikit panelize \
    --layout 'grid; rows: 8; cols: 3; space: 2mm' \
    --tabs 'fixed; width: 5mm; vcount: 1; hcount: 0' \
    --cuts 'mousebites; drill: 0.5mm; spacing: 1mm; offset: -0.251mm; prolong: -0.3mm' \
    --post 'millradius: 1mm' \
    --framing 'railstb; width: 5mm; space: 3mm;' \
    --tooling '3hole; hoffset: 2.5mm; voffset: 2.5mm; size: 1.5mm' \
    --fiducials '3fid; hoffset: 5mm; voffset: 2.5mm; coppersize: 2mm; opening: 1mm;' \
    --text 'simple; text: JLCJLCJLCJLC; anchor: mt; voffset: 2.5mm; hjustify: center; vjustify: center;' \
    --post 'millradius: 1mm' \
    ../cv_buffer.kicad_pcb cv_buffer_panel.kicad_pcb

kikit fab jlcpcb --no-drc --assembly --schematic ../cv_buffer.kicad_sch cv_buffer_panel.kicad_pcb .
mv gerbers.zip cv_buffer_gerbers.zip

