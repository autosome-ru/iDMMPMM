set terminal png small font Arial 9 size 1024, 768
set title 'PWM ROC curves based on MED_footprint.mfa (used 8 of 8), average length=42 (flank length=0), fixed length=34'
set key left
set grid
set logscale x
set format x '%g'
set ytics 1
set ylabel "number of sequences,\n containing at least one site scoring above the threshold"
set xlabel 'P-value'
set y2tics ('50%%' 4, '90%%' 7)
set y2label "percentage of sequences,\n containing at least one site scoring above the threshold"
set output 'MED_on_footprint.png'
plot 'MED_peaks_on_MED_footprint.mfa.p_value' using 2:1 with linespoints t 'MED_peaks.xml/Med','MED_imm_on_MED_footprint.mfa.p_value' using 2:1 with linespoints t 'MED_imm.xml/Med'
