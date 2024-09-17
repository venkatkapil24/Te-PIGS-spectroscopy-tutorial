IPI_GETACF=~/source/i-pi/bin/i-pi-getacf

# VDOS
${IPI_GETACF} -ifile ../3_production_simulations_tepigs/simulation.pos_0.extxyz -mlag 1024 -ftpad 3072 -ftwin cosine-hanning -oprefix xx -dt "2.0 femtosecond"  -der
mv xx_der_facf.data tepigs.data
rm xx_der_acf.data

${IPI_GETACF} -ifile ../4_production_simulations_classical/simulation.pos_0.extxyz -mlag 1024 -ftpad 3072 -ftwin cosine-hanning -oprefix xx -dt "2.0 femtosecond"  -der
mv xx_der_facf.data classical.data
rm xx_der_acf.data

${IPI_GETACF} -ifile ../5_production_simulations_trpmd/simulation.pos.xyz -mlag 1024 -ftpad 3072 -ftwin cosine-hanning -oprefix xx -dt "2.0 femtosecond"  -der
mv xx_der_facf.data trpmd.data
rm xx_der_acf.data


