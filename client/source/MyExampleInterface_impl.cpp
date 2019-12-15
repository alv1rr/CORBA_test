#include "MyExampleInterface_impl.h"
#include <iostream>

using namespace std;

char * MyExampleInterface_impl::send_message(const char * message)
{
	//cout << "C++ (omniORB) server: " << message << endl;
	cout << message << endl;
	char * server = CORBA::string_alloc(42);
	strncpy(server, "Message from C++ (omniORB) server", 42);
	return server;
}
