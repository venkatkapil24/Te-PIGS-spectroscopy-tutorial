### Production classical simulations

Check out the ```input.xml``` file. Here, we run a simple molecular dynamics simulation at 300 K using only the potential energy surface. Hence, we only have a single forcefield socket

```xml
<ffsocket name='maceoff23' mode='unix' pbc='false'>
    <address> driver </address>
</ffsocket>
```

and forcefield component

```xml
<forces>
    <force forcefield='maceoff23' weight='1'> </force>
</forces>
```

To estimate the vibrational spectrum, we print out the positions every 2 fs using:

```xml
<trajectory filename='pos' stride='4' flush='100' format='ase'> positions </trajectory>
```

The simulation can be run using the bash script.

```bash
bash run.sh
```
