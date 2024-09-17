### Step 4: Production simulations

Go to the directory ```3_production_simulations``` and checkout the ```input.xml``` file. Here, we run a simple molecular dynamics simulation at 300 K using a potential that adds a correction to the physical potential. The two potentials can be added by defining two forcefield sockets using

```xml
<ffsocket name='maceoff23' mode='unix' pbc='false'>
    <address> driver </address>
</ffsocket>
<ffsocket name='maceoff23-pigs' mode='unix' pbc='false'>
    <address> driver-pigs </address>
</ffsocket>
```

and setting up two force components using

```xml
<forces>
    <force forcefield='maceoff23' weight='1'> </force>
    <force forcefield='maceoff23-pigs' weight='1'> </force>
</forces>
```

To estimate the vibrational spectrum, we print out the positions every 2 fs using:

```xml
<trajectory filename='pos' stride='4' flush='100' format='ase'> positions </trajectory>
```


The Te PIGS potential is run using an ASEClient setup in the ```run-ase-pigs.py``` file.

The simulation can be run using the bash script.

```bash
bash run.sh
```

> **Note:**
> This step assumes that you have a working installation of i-PI using `pip` or have sourced the `env.sh` file in the top-level source directory and your Python environment has access to ```mace```.
