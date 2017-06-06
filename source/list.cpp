#define CATCH_CONFIG_RUNNER
#include <iostream>
#include "list.hpp"
#include <catch.hpp>

TEST_CASE ("empty","[4.2]"){
	List<int> l1;
  List<int> list {};
  REQUIRE(list.empty() == true);

}

TEST_CASE("size", "[4.2]") {
  List<int> list {};
  REQUIRE(list.size() == 0);
}
TEST_CASE ( " push_front front " , " [4.3] " )
{
List <int> list;
list.push_front (2);
list.push_front (4);
REQUIRE (4 == list.front());
}
TEST_CASE ( " list front value direkt aendern" , " [4.3] " )
{
List <int> list;
list.push_front (2);
list.front()=5;
REQUIRE (5 == list.front());
}
TEST_CASE ( " pop_back back " , " [4.3] " )
{
List <int> list;
list.push_back (1);
list.push_back (2);
REQUIRE (2 == list.back());
}

TEST_CASE ("should be empty after clearing", "[4.4]")
{
List <int> list;
list.push_front(1);
list.push_front(2);
list.push_front(3);
list.push_front(4);
list.clear ();
REQUIRE (list.empty ());
}
TEST_CASE("empty by default constructor", "[4.6]")
{
	List<int> list;
	
	auto b = list.begin();
	auto e = list.end();
	REQUIRE(b == e);
}
TEST_CASE("acess first element", "[4.6]")
{
	List<int> list;
	list.push_front(1);
	REQUIRE(1 == *list.begin());
}

TEST_CASE("gleich", "[aufgabe4.7]") {
  List<int> l1 {};
  l1.push_back(1); 
  l1.push_back(2);
  l1.push_back(3);
  List<int> l2 {};
  l2.push_back(1);
  l2.push_back(2);
  l2.push_back(3);
  REQUIRE(l1 == l2);
}

TEST_CASE("ungleich", "[aufgabe4.7]") {
  List<int> l1 {};
  l1.push_back(1); 
  l1.push_back(2);
  l1.push_back(3);
  List<int> l2 {};
  l2.push_back(3);
  l2.push_back(2);
  l2.push_back(1);
  REQUIRE(l1 != l2);
}

TEST_CASE("copy constructor", "[aufgabe4.8]") {
  List<int> list; 
  list.push_front(3); 
  list.push_front(5); 
  list.push_front(7); 
  list.push_front(11); 
  List<int> list2{list}; 
  REQUIRE(list == list2);;
}
TEST_CASE("insert anfang", "[aufgabe4.9]") {
  List<int> list;  
  list.push_front(1); 
  list.push_front(3); 
  list.push_front(5); 
  list.insert(list.begin(), 2);
  REQUIRE(4== list.size());
  REQUIRE(2 == list.front());
  REQUIRE(1 == list.back());
}
TEST_CASE("insert ende", "[aufgabe4.9]") {
  List<int> list;  
  list.push_front(1); 
  list.push_front(3); 
  list.push_front(5); 
  list.insert(list.end(), 2);
  REQUIRE(4== list.size());
  REQUIRE(5 == list.front());
  REQUIRE(2 == list.back());
}
TEST_CASE("insert", "[aufgabe4.9]") {
List<int> list3;
  list3.push_back(1); 
  list3.push_back(5); 
  ListIterator<int> pos = list3.begin();
  ++pos;
  list3.insert(pos,3);
  ListIterator<int> it = list3.begin();
  REQUIRE(1 == *it); 
  ++it; 
  REQUIRE(3 == *it); 
  ++it;
  REQUIRE(5 == *it);  
}
TEST_CASE("reverse", "[aufgabe4.10]") {
List<int> list; 
  list.push_front(1); 
  list.push_front(2); 
  list.push_front(3); 
  list.push_front(4); 
  list.reverse();
  ListIterator<int> it = list.begin();
  REQUIRE(1 == *it);
  ++it;
  REQUIRE(2 == *it);
  ++it; 
  REQUIRE(3 == *it);
  ++it;
  REQUIRE(4 == *it);

}





int main(int argc ,char *argv[])
{
return Catch::Session().run(argc, argv);
}
