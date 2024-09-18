To perform this step, you'll need to work with a specific commit of mace [ea9178fc7d6cdb54eb850623e09000c5ae2724e]. Go to the mace root directory and perform the following steps:
```bash
git checkout ea9178fc7d6cdb54eb850623e09000c5ae27243e
pip install .
```


To estimate IR and Raman spectra, we need the system's total polarization and polarizability over its dynamical trajectory. Go to the directory ```4_dielectric_response_prediction``` and run the ``` get_dielectric_response.sh ``` script. This step uses the MACE dipole and polarizability model developed in Ref. [4]. This step is optional if you only want to estimate the vibrational density states. This script produces the following files: 


| File Name             | Description                                                                 |
|-----------------------|-----------------------------------------------------------------------------|
| `MACE_mu.txt`         | contains the 3-dimensional polarization vector                              |
| `MACE_alpha.txt`      | contains the 9-dimensional flattened polarizability tensor                  |
| `MACE_alpha_sh.txt`   | contains the six (L=0,m=0 L=2,m=-2,-1,0,1,2) spherical harmonic components of the polarizability tensor |

