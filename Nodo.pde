class Node {
  //Atributos

  String id;
  String parent;
  String value;
  String left;
  String right;
  boolean ordena; 
  boolean Izq;
  boolean Der;

  //Constructor para un nodo raíz

  Node(int v) {
    id = "0";
    parent = null;
    value = str(v);
    left = null;
    right = null;
    ordena = false; 
    Izq = false;
    Der = false;
  }

//Constructor para nodo rama

  Node(int i, int p, int v) {
    id = str(i);
    parent = str(p);
    value = str(v);
    left = null;
    right = null;  
    ordena = false;
    Izq = false;
    Der = false;
  }
}
