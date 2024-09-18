Run the bash script `get_spectra.sh` to estimate the vibrational density of states, IR, isotropic Raman and anisotropic Raman spectra. The script produces the following files:

| File Name              | Description                   |
|------------------------|-------------------------------|
| `xx_der_facf.data`     | Vibrational density of states   |
| `mm_der_facf.data`     | IR   |
| `L0L0_der_facf.data`   | Isotropic Raman   |
| `L2L2_der_facf.data`   | Anisotropic Raman   |

The first column of these files is the frequency in atomic units while the second column is the intensity modulo a multiplicative constant. Multiply with 219474.36,  to convert the frequencies into 'cm-1' units. 
