### Production thermostatted ring polymer molecular dynamics simulations

Check out the ```input.xml``` file. Here, we run a thermostatted ring polymer molecular dynamics simulation at 300 K on the potential energy surface. Hence, we only have a single forcefield socket and forcefield component like in the case of classical molecular dynamics.

The main differences are the use of 32 beads 

```xml
```

a smaller timestep 

```xml
```

and an appropirate path-integral thermostat 

```xml
```

To estimate the vibrational spectrum, we print out the positions every 2 fs using:

```xml
<trajectory filename='pos' stride='4' flush='100' format='ase'> positions </trajectory>
```

The simulation can be run using the bash script.

```bash
bash run.sh
```
