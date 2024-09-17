IPI=i-pi
IPIDRIVER=i-pi-driver
PYTHON=python

${IPI} input.xml &> log.i-pi & 

sleep 10

${IPIDRIVER} -u -a driver -m qtip4pf &	# runs the fast q-TIP4P/f model
#${PYTHON} run-ase.py & 
${PYTHON} run-ase-pigs.py & # runs the more expensive MACE-OFF23(S) model 

wait

