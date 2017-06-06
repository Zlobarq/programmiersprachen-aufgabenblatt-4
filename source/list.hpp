#ifndef BUW_LIST_HPP
#define BUW_LIST_HPP
#include <cstddef>
#include <iostream>
#include <assert.h> 
#include <utility>
// List . hpp
template <typename T>
struct List;
template <typename T>
struct ListNode 
{
ListNode () : m_value () , m_prev (nullptr) , m_next (nullptr) {}
ListNode (T const& v , ListNode* prev , ListNode* next)
: m_value (v) , m_prev (prev) , m_next (next)
{}
T m_value;
ListNode* m_prev;
ListNode* m_next;
};
template <typename T>
struct ListIterator
{
typedef ListIterator<T> Self;

  typedef T value_type;
  typedef T* pointer;
  typedef T& reference;
  typedef ptrdiff_t difference_type;
  typedef std::forward_iterator_tag iterator_category;

  friend class List<T>;
  // not implemented yet
  

  // Aufgabe 4.5

  ListIterator() : m_node {nullptr} {} //default constructor
  ListIterator(ListNode<T>* n) : m_node {n} {} //construcotr

  reference operator * () const {
    return m_node -> m_value; //die node zeigt die value
  }


  pointer operator -> () const { 
    return &(m_node -> m_value); //die selbe bei struktur mit dereference operator?
  } 


  Self& operator ++ () { 
    if (m_node) {
      m_node = m_node -> m_next; //zeigt die nachste node
    }
    return *this; 
  }

	Self& operator ++ (int counter)
	{
		while (counter>0){
			 m_node = m_node -> m_next; //zeigt die nachste node
			counter--;
		}
		return *this;
}


  bool operator == (const Self& x) const {
    return m_node == x.m_node;
  } 


  bool operator != (const Self& x) const {
     return m_node != x.m_node;
  }


  Self next() const{
    if(m_node)
      return ListIterator(m_node->m_next);
    else
      return ListIterator(nullptr);
  }

  Self prev() const { 
    if (m_node)
      return ListIterator(m_node->m_prev);
    else
      return ListIterator(nullptr);
}



private:
// the node the iterator is pointing to
    ListNode<T>* m_node = nullptr;
};
template <typename T>
struct ListConstIterator
{
friend class List <T>;
public:
// not implemented yet
private:};
template <typename T>
ListNode <T>* m_node=nullptr;
template <typename T>
class List
{
public:
//WAS IST TYPEDEF:
//typedef ...types... name
//Typedef ersetzt die typen beim declaration/initialization mit einem Name
//typedef unsigned long ulong; - anstatt unsigned long jedes mal zu schreiben,schreiben wir ulong
//nutzvoll wenn wir mehr objekten oder von selben typ haben werden
//da wir koennen den typ schnell einmal beim typdef immer aendern,anstatt den typ jedes objekts zu aendern.
typedef T value_type;
typedef T* pointer;
typedef const T* const_pointer;
typedef T & reference;
typedef const T & const_reference;
typedef ListIterator <T> iterator;
typedef ListConstIterator <T> const_iterator;
friend class ListIterator <T>;
friend class ListConstIterator <T>;

//4.2
List(): m_size {0}, m_first {nullptr}, m_last {nullptr} {} 

    
  bool empty() const {
    return m_size == 0; 
  }

  std::size_t size() const { //'std::size_t can store the maximum size of a theoretically possible object of any type (including array).'
//http://en.cppreference.com/w/cpp/types/size_t
//unsere list ist ein Template objekt,dass jeden type besitzen kann
    return m_size; 
}
//4.3
void push_front(T const& a) {
   if (m_size == 0) { //wenn list ist leer
      m_first = new ListNode<T>{a, nullptr, nullptr}; //wir haben einen Node ohne previous und naechstes
      m_last = m_first; //die erste eigefugte Node ist erstes und letztes...
    }
	if (m_size >= 1) { //wenn list ist nicht leer
      m_first = new ListNode<T>{a, nullptr, m_first}; //wir fugen einem node vor dem ersten
      //so naechstes node ist die derzeitige ersten
      m_first -> m_next -> m_prev = m_first;
      //m_first ->m_next ist die alte erste node(jetzt zweite)
      //m_prev=m_first:wir verbinden den zweiten node mit dem neuen ersen.
    }

    ++m_size; //list size steigt.
}
void pop_front() {
    if (m_size == 1) { //wenn das list einen element hat..
      assert(m_first!=nullptr); //Vorlesung Makro
      delete m_first; //wir lotschen diese element
      m_first = nullptr; //wir haben ein leeres list
      m_last = nullptr; //wir haben ein leeres list
      m_size = 0; //wir haben ein leeres list
    }

    if (m_size > 1) { //wenn wir ein grosseres list haben
      assert(m_first!=nullptr);
      delete m_first; //lotschen
      m_first = m_first -> m_next; //die neue erste wird die naechste des alten
      --m_size; //size wird kleiner
    }
}




void push_back(T const& a) { //push_front mit ein bisschen aenderungen
    if (m_size == 0) {
      m_last = new ListNode<T>{a, nullptr, nullptr};
      m_first = m_last;
    }

    if (m_size >= 1) {
      m_last = new ListNode<T>{a, m_last, nullptr};
      m_last -> m_prev -> m_next = m_last;
    }

    ++m_size;
}

void pop_back() { 
    if (m_size == 1) {
    delete m_last;
      m_last = nullptr;
      m_first = nullptr;
      m_size = 0;
    }

    if (m_size > 1) {
      delete m_last;
      m_last = m_last -> m_prev;
      --m_size;
    }
  }
  
    T& front(){ //T& referenztypen
    //ermoglicht TEST_CASE ( " list front/back value direkt aendern" , " [4.3] " )
    	return m_first->m_value;
    }
    T& back(){
    	return m_last->m_value;
}
//4.4
//clear mit pop_front
void clear() {
    while (m_size > 0) {
      pop_front();
    }
}
~List() { //~List() destructor
clear(); 
}

//4.6

  iterator begin() const { 
  	return iterator(m_first);
}

  iterator end() const { 
  	return iterator();
}
//4.8
List(List<T> const& x): m_size {0}, m_first {nullptr}, m_last {nullptr} {
    for (iterator i = x.begin(); i != x.end(); ++i) {
      push_back(*i); 
    }
}  
//4.9
void insert(iterator pos, T const& value) {
    if (pos == begin()) { 
      push_front(value);
    }
    else if (pos == end()) { 
      push_back(value);
    }
    else {
      ListNode <T>* insertNode = new ListNode<T> {value, pos.prev().m_node, pos.m_node};

      pos.prev().m_node -> m_next = insertNode;
      pos.m_node -> m_prev = insertNode;
      ++m_size; 
    }
}
//4.10
  void reverse() {
    List<T> tmp{*this}; 
    clear();
    for (iterator it = tmp.begin(); it != tmp.end(); ++it) {
      push_front(*it); 
    }
}

private:
std::size_t m_size=0;
ListNode <T>* m_first=nullptr;
ListNode <T>* m_last=nullptr;



};

//Aufgabe 4.7

template<typename T>
bool operator == (List<T> const& xs, List<T> const& ys) {
  bool result = true;

	if (xs.size() != ys.size()) { 
		result = false;
	}

	else {
		ListIterator<T> xs_it = xs.begin(); 
		ListIterator<T> ys_it = ys.begin();

		while (xs_it != xs.end() && ys_it != ys.end()) { 
			if (*xs_it != *ys_it) { 
				result = false;
        break;
			}

			++xs_it; 
			++ys_it;
		}
	}

return result;
}
template<typename T>
bool operator != (List<T> const& xs, List<T> const& ys) { 
	return !(xs == ys);
}

//4.10 2
template<typename T>
List<T> reverse (List<T> list) {
  list.reverse();
  return list; 
}


#endif