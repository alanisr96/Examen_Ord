int [] x = {4,12,9,23,6,91,2,54,37,6,1,5,78,87,25};

int [] finalx;

int posfinalx;
Node root; 
Tree arbol;

void setup(){
  
  posfinalx = 0;
  finalx = new int [x.length];
  root = new Node(x[0]); //Inicializar nodo
  arbol = new Tree(root);
  
  for(int i = 1; i < x.length; i++){        
    arbol.createNode(arbol.myNodes[0], x[i]);
  }
 for(int i = 0; i < x.length; i++){      
    arbol.printData(i);
    println("-----------");

 }
    arbol.acomoda(arbol.myNodes[0]);   
    println(finalx);
}

void draw(){
}


   
