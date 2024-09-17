IPI=i-pi
IPIDRIVER=i-pi-driver
PYTHON=python

${IPI} input.xml &> log.i-pi & 

sleep 10

${IPIDRIVER} -u -a driver -m qtip4pf &
#${PYTHON} run-ase.py & 

wait

