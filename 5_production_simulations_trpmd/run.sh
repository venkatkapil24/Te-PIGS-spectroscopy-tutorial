IPI=i-pi
IPIDRIVER=i-pi-driver
PYTHON=python

${IPI} input.xml &> log.i-pi & 

sleep 30

for x in {1..8}
do
${IPIDRIVER} -u -a driver -m qtip4pf & # runs the fast q-TIP4P/f model 
#${PYTHON} run-ase.py & # runs the more expensive MACE-OFF23(S) model

done

wait

