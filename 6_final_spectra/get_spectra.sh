IPI_GETACF=~/source/i-pi/bin/i-pi-getacf

# VDOS
${IPI_GETACF} -ifile ../3_production_simulations_tepigs/simulation.pos_0.extxyz -mlag 2048 -ftpad 2048 -ftwin cosine-hanning -oprefix xx -dt "2.0 femtosecond"  -der
${IPI_GETACF} -ifile ../3_production_simulations_classical/simulation.pos_0.extxyz -mlag 2048 -ftpad 2048 -ftwin cosine-hanning -oprefix xx -dt "2.0 femtosecond"  -der
${IPI_GETACF} -ifile ../3_production_simulations_trpmd/simulation.pos.xyz -mlag 2048 -ftpad 2048 -ftwin cosine-hanning -oprefix xx -dt "2.0 femtosecond"  -der


