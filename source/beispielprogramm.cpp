#include <iostream>
int compute()
{
int val = 1111;
std::cout<<"computed:"<<val<<"\n";
return val;
}
int main(int argc ,char *argv[])
{
int key = compute ();
if (1234 != key ){
std::cout<< "ERROR:wrong key \n ";
return 1;
}
std::cout<< " Achievement unlocked \n ";
return 0;
}
//cmake -DCMAKE_BUILD_TYPE=Debug
//gdb beispiel
//run
//break 11
//run
//print key
//set key=1234
//print key
//step