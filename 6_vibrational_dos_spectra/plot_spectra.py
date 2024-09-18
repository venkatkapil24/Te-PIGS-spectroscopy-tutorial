import numpy 
import  matplotlib.pyplot as plt

classical = numpy.loadtxt('classical.data', unpack=True)
tepigs = numpy.loadtxt('tepigs.data', unpack=True)
trpmd = numpy.loadtxt('trpmd.data', unpack=True)
qcmd = numpy.loadtxt('qcmd.data', unpack=True)

labels = ['classical', 'trpmd', 'tepigs', 'qcmd reference']

qcmd[1] /= numpy.max(qcmd[1])
for i,x in enumerate([classical, trpmd, tepigs]):
    x[0] *= 219474.36
    x[1] /= numpy.max(x[1]) 
    x[1] += i
    plt.plot(x[0], x[1], label=labels[i])
    if i == 2:
        plt.plot(qcmd[0], qcmd[1] + i, color='k', alpha=1.0, ls='--', label=labels[-1])
    else:
        plt.plot(qcmd[0], qcmd[1] + i, color='k', alpha=1.0, ls='--')

plt.ylabel('relative intensity [arb. units]')
plt.xlabel('frequency $\omega$ [cm$^{-1}$]')
plt.xlim([-50, 4550])
plt.yticks([])
plt.legend()
#plt.savefig('scheme.png', dpi=300)
