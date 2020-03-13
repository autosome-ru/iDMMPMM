set terminal png small font Arial 9 size 1024, 768
set title 'PWM ROC curves based on bcd.mfa (used 400 of 400), average length=500 (flank length=0), fixed length=22'
set key left
set grid
set logscale x
set format x '%g'
set ytics 5
set ylabel "number of sequences,\n containing at least one site scoring above the threshold"
set xlabel 'P-value'
set y2tics ('50%%' 200, '90%%' 360)
set y2label "percentage of sequences,\n containing at least one site scoring above the threshold"
set output 'BCD_control1.png'
plot 'BCD_selex_on_bcd.mfa.p_value' using 2:1 with lines t 'BCD_selex.xml/bcd','BCD_b1h_on_bcd.mfa.p_value' using 2:1 with lines t 'BCD_b1h.xml/bcd','BCD_footprint_on_bcd.mfa.p_value' using 2:1 with lines t 'BCD_footprint.xml/bcd','BCD_imm_on_bcd.mfa.p_value' using 2:1 with lines t 'BCD_imm.xml/bcd'
