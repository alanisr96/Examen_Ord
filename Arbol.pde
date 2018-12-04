class Tree {
  //Atributos
  Node [] myNodes; //Declarando Array de nodos

  //Constructor
  Tree(Node n) {
    myNodes = new Node[1];
    myNodes[0] = n;
  }

  //Métodos
  String checkSide(Node n, int val) {
    String res;
    if (val >= int(n.value)) {
      res = "left"; 
    } else {
      res = "right";
    }
    return res;
  }

  boolean checkEmpty(Node n, String side) {
    boolean empty = false;
    if (side == "left") {
      if (n.left == null) {
        empty = true;
      }
    }
    if (side == "right") {
      if (n.right == null) {
        empty = true;
      }
    }
    return empty;
  }

  void addLeftChild(Node n) {
    n.left = str(myNodes.length);
  }

  void addRightChild(Node n) {
    n.right = str(myNodes.length);
  }

  void createNode(Node n, int val) {
    String lado;
    lado = checkSide(n, val);
    if (lado == "left") {
      boolean vacio;
      vacio = checkEmpty(n, lado);
      if (vacio == true) {
        addLeftChild(n);
        Node nuevo;
        nuevo = new Node(myNodes.length, int(n.id), val);
        myNodes = (Node []) append(myNodes, nuevo);
      } else {
        createNode(myNodes[int(n.left)], val);
      }
    }

    if (lado == "right") {
      boolean vacio;
      vacio = checkEmpty(n, lado);
      if (vacio == true) {
        addRightChild(n);
        Node nuevo;
        nuevo = new Node(myNodes.length, int(n.id), val);
        myNodes = (Node []) append(myNodes, nuevo);
      } else {
        createNode(myNodes[int(n.right)], val);
      }
    }
  }


  void printData(int i) {
    println(arbol.myNodes[i].id);
    println(arbol.myNodes[i].parent);
    println(arbol.myNodes[i].value);
    println(arbol.myNodes[i].left);
    println(arbol.myNodes[i].right);
  }



  void acomoda(Node n) {

    if (n.left != null) {              
      if (n.Izq == true) {                 
        if (n.ordena == false) {                   
          guarda(n); 
        }
      } else {
        veIzquierda(n);
      }
    } else {
      n.Izq=true; 
    }
    if (n.ordena==false) {   
      guarda(n);
    }
    if (n.right == null) {    
      n.Der=true;      
      veArriba(n);
    } 
    if (n.Der==false) {        
    veDerecha(n);                       
    }
    if (n.parent!=null) {            
      veArriba(n);
    } 
    
  }   

  void veIzquierda(Node n) {
    n.Izq=true;
    acomoda(myNodes[int(n.left)]);
  }

  void veDerecha(Node n) {
    n.Der=true;
    acomoda(myNodes[int(n.right)]); 
  }

  void guarda(Node n) {
    finalx[posfinalx]=int (n.value);
    n.ordena= true;
    posfinalx++;
  }

  void veArriba(Node n) {
    acomoda(myNodes[int(n.parent)]);
  }
}
