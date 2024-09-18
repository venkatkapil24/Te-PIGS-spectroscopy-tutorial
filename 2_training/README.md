### Step 3: Fitting the Te PIGS potential

Check out the ```train.sh``` file. It's a standard ```MACE``` training script for training on forces only using  the  ```--energy_weight=0.0``` and ```--scaling='no_scaling'``` flags. To ensure we fit the difference between the centroid and physical forces, we use the flag ```--forces_key='delta_force'```. 

Since quantum nuclear effects are localized to short ranges, we use a relatively small cutoff using ```--r_max=3.0```. Since the regression task is easy, the model can be made simpler by reducing the value associated with the flag ```--hidden_irreps='64x0e'```.

> **Note:**
> This step assumes that your have access to ```mace``` python bindings and cli.  
