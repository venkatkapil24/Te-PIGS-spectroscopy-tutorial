### Production thermostatted ring polymer molecular dynamics simulations

Check out the ```input.xml``` file. Here, we run a thermostatted ring polymer molecular dynamics simulation at 300 K on the potential energy surface. Hence, we use a single forcefield socket and forcefield component akin to classical molecular dynamics.

The main differences are the use of 32 beads, 

```xml
<initialize nbeads='32'>
  <file mode='pdb'> init.pdb </file>
  <velocities mode='thermal' units='kelvin'> 300 </velocities>
</initialize>
```

a smaller timestep,

```xml
<timestep units='femtosecond'> 0.25 </timestep>
```

and an appropriate path-integral thermostat [1], 

```xml
<thermostat mode='pile_g'>
  <pile_lambda> 0.5 </pile_lambda>
  <tau units='femtosecond'> 100 </tau>
</thermostat>
```

To estimate the vibrational spectrum, we print out the position of the centroid every 2 fs using:

```xml
<trajectory filename='pos' stride='8' flush='100' format='xyz' cell_units='angstrom'> x_centroid{angstrom} </trajectory>
```

The simulation can be run using the bash script.

```bash
bash run.sh
```

### References 

1. Rossi, M., Ceriotti, M., & Manolopoulos, D. E. (2014). How to remove the spurious resonances from ring polymer molecular dynamics. The Journal of Chemical Physics, 140(23), 234116. [https://doi.org/10.1063/1.4883861](https://doi.org/10.1063/1.4883861)
