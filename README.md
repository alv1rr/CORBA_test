# CORBA_test
Testing CORBA (omniORB) in Qt linux ubuntu.


The folowing packages should be installed:
omniidl omniorb omniorb-nameserver omniorb-idl libomniorb4-dev libomniorb4-2;
libncurses5-dev libncursesw5-dev

To configure omniORB port and host the InitRef line in the configuration file: /etc/omniORB.cfg should be edited:

InitRef = NameService=corbaname::localhost:4333


Header file example.hh and source file exampleSK.cc have been generated from file example.idl (located in "idl" folder) by executing the command:

omniidl -bcxx example.idl


To run all parts of the application the following commands shoud be executed:

sudo omniNames -start 4333 -logdir ~/omnilog/ -errlog ~/omnilog/omniNamesError.txt

./server -ORBInitRef NameService=corbaloc::localhost:4333/NameService

./client -ORBInitRef NameService=corbaloc::localhost:4333/NameService


Ready to test binary files: "server" and "client" are located in folder "bin".

Expected test result:
during typing symbols in client console window the same symbols immediately appear in server console window.
