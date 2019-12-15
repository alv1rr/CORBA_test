# CORBA_test
Testing CORBA (omniORB) in Qt linux ubuntu.


The folowing packets should be installed:
omniidl omniorb omniorb-nameserver omniorb-idl libomniorb4-dev libomniorb4-2;
libncurses5-dev libncursesw5-dev

to configure omniORB InitRef line in the file: /etc/omniORB.cfg should be edited:
InitRef = NameService=corbaname::localhost:4333


To run all parts of the application the following commands shoud be executed:

sudo omniNames -start 4333 -logdir ~/omnilog/ -errlog ~/omnilog/omniNamesError.txt

./server -ORBInitRef NameService=corbaloc::localhost:4333/NameService

./client -ORBInitRef NameService=corbaloc::localhost:4333/NameService


Ready to test binary files: "server" and "client" are located in folder "bin".

Expected test result:
during typing symbols in client console window the same symbols immediately appear in server console window.
