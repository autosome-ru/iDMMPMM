set terminal png small font Arial 9 size 1024, 768
set title 'PWM ROC curves based on BCD_selex.mfa (used 59 of 59), average length=41 (flank length=0), fixed length=22'
set key left
set grid
set logscale x
set format x '%g'
set ytics 5
set ylabel "number of sequences,\n containing at least one site scoring above the threshold"
set xlabel 'P-value'
set y2tics ('50%%' 29, '90%%' 53)
set y2label "percentage of sequences,\n containing at least one site scoring above the threshold"
set output 'BCD_on_selex.png'
plot 'BCD_b1h_on_BCD_selex.mfa.p_value' using 2:1 with lines t 'BCD_b1h.xml/bcd','BCD_footprint_on_BCD_selex.mfa.p_value' using 2:1 with lines t 'BCD_footprint.xml/bcd','BCD_peaks_on_BCD_selex.mfa.p_value' using 2:1 with lines t 'BCD_peaks.xml/bcd','BCD_imm_on_BCD_selex.mfa.p_value' using 2:1 with lines t 'BCD_imm.xml/bcd','BCD_except_selex_on_BCD_selex.mfa.p_value' using 2:1 with lines t 'BCD_except_selex.xml/bcd'
