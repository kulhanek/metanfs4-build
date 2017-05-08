# metanfs4-build
Utilities for testing and buliding of the [MetaNF4](https://github.com/kulhanek/metanfs4) package. The package is employed for mounting NFS4 storages of MetaCentrum National Grid and CESNET on clusters of NCBR and CEITEC, Masaryk University.

MetaNFS4 main functionality is:
* deamon creating local accounts on the fly from recieved 
* nfsidmapper
* nsswitch

## Testing Mode
Typical procedure is:
```bash
$ ./01.pull-code.sh      # update the code
$ ./04.build-inline.sh   # build the code inline in src/
```
## Production Build
Typical procedure is:
```bash
$ ./01.pull-code.sh      # update the code
$ ./10.build-final.sh    # final build to /opt/metanfs4/2.0
```

