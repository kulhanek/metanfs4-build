# metanfs4-build
Utilities for testing and buliding of the [MetaNF4](https://github.com/kulhanek/metanfs4) package. The package is employed for mounting NFS4 storages of MetaCentrum National Grid and CESNET on clusters of NCBR and CEITEC, Masaryk University.

MetaNFS4 main features:
* deamon creating local accounts for proper visualization of NFS4 file/directory owners and groups and providing feadback to own nfsidmapper and nsswitch
* nfsidmapper interacting with the daemon
* nsswitch interacting with the daemon

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

