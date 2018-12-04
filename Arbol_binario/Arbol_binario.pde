int [] valores = {4,12,9,23,6,91,2,54,37,6,1,5,78,87,25};
int [] nuevoX;
int posnuevoX;

Nodos nodo; //Declarando nodo
Tree arbol;

void setup(){
  posnuevoX = 0;
  nuevoX = new int [valores.length];
  nodo = new Nodos(valores[0]); //Inicializar nodo
  arbol = new Tree(nodo);
  println(valores);
  println("-----------");
  //for (int i=0; i < x.length; i++){        // Ver numeros de "x"
  //  println(x[i]);
  // }
  for(int i = 1; i < valores.length; i++){         // Construir arbol
  arbol.createNode(arbol.Tronco[0], valores[i]);
  }
  //  for(int i = 0; i < x.length; i++){      // Ver atributos de nodos
  //    arbolito.printData(i);
  //   println("-----------");
  // }
  arbol.acomodar(arbol.Tronco[0]);   // Ordenar numeros de "x"
  println(nuevoX);
  // for (int i=0; i < x.length; i++){        // Ver numeros ordenados de "x"
  //  println(newX[i]);
  // }
}

void draw(){
}
