# Quantum vibrational spectroscopy using Te PIGS

Here is a demonstration of the Te PIGS methods [1] on estimating first-principles quality IR and Raman spectra of liquid water at 300 K by machine learning an effective potential that incorporates quantum nuclear effects. It comprises two main steps:

## Training

We will train a quantum effective potential corresponding to the potential of mean force of the centroid of the path integral using the Te PIGS method. The training data will be generated from a path-integral molecular dynamics simulation at an elevated temperature (Te) of 500 K. The effective potential will represented using the MACE [2] machine learning framework and fit with the path-integral coarse-graining simulation (PIGS) methods. 

## Trajectory generation 

This is as easy as performing molecular dynamics using the Te PIGS quantum effective potential at 300 K. The vibrational density of states can be estimated as the time correlation function of positions. 

## Summary of tutorial

We will predict the vibrational spectrum of water at room temperature. It is possible to run 'density functional theory quality' water using the MACE-OFF(S) potential [3], a recently developed hybrid-functional DFT-level machine learning potential for general organic molecules. However, to speed things up, we will perform simulations with the flexible q-TIP4P/f water model [4]. Our goal will be to compare the classical and quantal vibrational density of states (without IR/Raman selection rules). The classical spectra will be generated using standard molecular dynamics. The quantal spectra will be computed using the standard ring polymer molecular dynamics and the much less expensive and more accurate Te PIGS approach. If time permits, we can also predict R and Raman spectra using a [machine-learning model](https://github.com/venkatkapil24/ML-quantum-vibrational-spectroscopy) to predict the polarization and polarizability of bulk water [5].  

##

Go through the individual directories and follow the instructions in the README.md files. 

## Python setup summary

## References 

1. Musil, F., Zaporozhets, I., Noé, F., Clementi, C., & Kapil, V. (2022). Quantum dynamics using path integral coarse-graining. *The Journal of Chemical Physics, 157*(18), 181102. [https://doi.org/10.1063/5.0120386](https://doi.org/10.1063/5.0120386)

2. Batatia, I., Kovacs, D. P., Simm, G. N. C., Ortner, C., & Csanyi, G. (2022). MACE: Higher Order Equivariant Message Passing Neural Networks for Fast and Accurate Force Fields. *Advances in Neural Information Processing Systems*. [https://openreview.net/forum?id=YPpSngE-ZU](https://openreview.net/forum?id=YPpSngE-ZU)

3. Kovács, D. P., Moore, J. H., Browning, N. J., Batatia, I., Horton, J. T., Kapil, V., Witt, W. C., Magdău, I.-B., Cole, D. J., & Csányi, G. (2023). Mace-off23: Transferable machine learning force fields for organic molecules. [https://doi.org/10.48550/ARXIV.2312.15211](https://doi.org/10.48550/ARXIV.2312.15211)

4. Habershon, S., Markland, T. E., & Manolopoulos, D. E. (2009). Competing quantum effects in the dynamics of a flexible water model. The Journal of Chemical Physics, 131(2). [https://doi.org/10.1063/1.3167790](https://doi.org/10.1063/1.3167790)

5. Kapil, V., Kovács, D. P., Csányi, G., & Michaelides, A. (2023). First-principles spectroscopy of aqueous interfaces using machine-learned electronic and quantum nuclear effects. *Faraday Discussions*. [https://doi.org/10.1039/D3FD00113J](https://doi.org/10.1039/D3FD00113J)


## Contact

Feel free to email Venkat Kapil [v.kapil@ucl.ac.uk](v.kapil@ucl.ac.uk) for any questions. 
