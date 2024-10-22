## i-PI in a nutshell

i-PI is based on the notion that force evaluation and sampling are mutually exclusive aspects of simulation. Hence, i-PI decouples the two by implementing the latest sampling algorithms in Python and uses a socket interface to communicate with force evaluator codes.  

![i-PI Philisophy](https://ipi-code.org/i-pi/_images/ipi-structure-v3.svg)

With this decoupling, the latest advances in sampling and 'total energy and force methods' can be easily combined. 

## A typical i-PI input file

![Different parts of an i-PI input file](./i-PI-input.png)

i-PI has a modular setup, providing flexibility. 

## Generating reference PIMD training data

Check out the ```input.xml``` file. We perform a path integral molecular dynamics simulation at 500 K using 8 imaginary time slices and a timestep of 0.5 fs. The total training data corresponds to 10 ps of simulation time. 

To fit the Te PIGS effective potential, we regress the centroid force against the centroid positions, but to make the fitting task easier, we can learn the difference between the centroid force and the physical force acting on the centroid position. The centroid positions and forces can be printed out using:

```xml
<trajectory filename='xc' stride='20' format='xyz' cell_units='ase'> x_centroid{ase} </trajectory>
<trajectory filename='centroid_force' stride='20' format='ase'> f_centroid </trajectory>
```

The physical force acting on the centroid can be printed out on the fly in two steps. First, we define a 'dummy' component of the system's force with a zero weight that receives the centroid position (set by ```nbeads='1'```) using:
```xml
<forces>
    <force forcefield='maceoff23' weight='1'> </force>
    <force forcefield='maceoff23' weight='0' nbeads='1'> </force>
</forces>
```
Since the weight of this component is zero, it doesn't affect the dynamics of the system. Then, we print out the raw value (i.e. without applying the weight) of the force component as 
```xml
<trajectory filename='physical_force' stride='20' format='ase'> forces_component_raw(1) </trajectory>
```

We conform to standard ```ASE``` units and print out the forces in extended xyz format that is easily read by ```ASE```. 

This simulation can be run by setting off the bash script:

```bash
bash run.sh
```
