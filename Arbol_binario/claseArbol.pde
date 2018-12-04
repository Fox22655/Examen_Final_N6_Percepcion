class Tree {
  //Atributos
  Nodos [] Tronco; //Declarando Array de nodos
  
  //Constructor
  Tree(Nodos n) {
    Tronco = new Nodos[1];
    Tronco[0] = n;
  }

  //Métodos
  String checkSide(Nodos n, int val) {
    String res;
    if (val <= int(n.valor)) {
      res = "left";
    } else {
      res = "right";
    }
    return res;
  }

boolean checkEmpty(Nodos n, String side) {
    boolean empty = false;
    if (side == "left") {
      if (n.izquierda == null) {
        empty = true;
      }
    }

    if (side == "right") {
      if (n.derecha == null) {
        empty = true;
      }
    }
    return empty;
}

void addLeftChild(Nodos n) {
    n.izquierda = str(Tronco.length);
}

void addRightChild(Nodos n) {
    n.derecha = str(Tronco.length);
}

void createNode(Nodos n, int val){
    String lado;
    lado = checkSide(n, val);
    if(lado == "left"){
      boolean vacio;
      vacio = checkEmpty(n, lado);
      if(vacio == true){
        addLeftChild(n);
        Nodos nuevo;
        nuevo = new Nodos(Tronco.length,int(n.id),val);
        Tronco = (Nodos []) append(Tronco, nuevo);
      }
      else{
        createNode(Tronco[int(n.izquierda)],val);
      }
    }
    
    if(lado == "right"){
      boolean vacio;
      vacio = checkEmpty(n, lado);
      if(vacio == true){
        addRightChild(n);
        Nodos nuevo;
        nuevo = new Nodos(Tronco.length,int(n.id),val);
        Tronco = (Nodos []) append(Tronco, nuevo);
      }
      else{
        createNode(Tronco[int(n.derecha)],val);
      }
    }
}

void printData(int i) {
    println(arbol.Tronco[i].id);
    println(arbol.Tronco[i].padre);
    println(arbol.Tronco[i].valor);
    println(arbol.Tronco[i].izquierda);
    println(arbol.Tronco[i].derecha);
    println(arbol.Tronco[i].orden);
    println(arbol.Tronco[i].ordenIzquierda);
    println(arbol.Tronco[i].ordenDerecha);
}
  
void acomodar(Nodos n){//---------------------------------
//if (n.orderLeft==true && n.order==true && n.orderRight==true && n.parent==null){
//goOut();
//} else {
if (n.derecha != null){              //revisarHijoDch
    if (n.ordenDerecha == true){                       //revisarOrdenDerecha
       if (n.orden == false){                                            //revisarOrden
       Ordenar(n);
       }
    }else{
      irDch(n);
    }
    }else{
      n.ordenDerecha=true;
    }
    if (n.orden==false){     //revisarOrden
      Ordenar(n);
    }
    if (n.izquierda == null){    //revisarHijoIzq
      n.ordenIzquierda=true;
      irArriba(n);
    } 
    if(n.ordenIzquierda==false){                     //revisarOrdenDerecha
      irIzq(n); 
    }
    if(n.padre!=null){            //revisarRoot
    irArriba(n); 
  } //else {
    //goOut();}
//}             fin alternativo
}   //FIN

void irIzq(Nodos n){
  n.ordenIzquierda=true;
//  println("ID es:");
 // println(n.id);
 // println("orderLeft es:");
//  println(n.orderLeft);
//  println("-----------");
acomodar(Tronco[int(n.izquierda)]);
}

void irDch(Nodos n){
  n.ordenDerecha=true;
//  println("ID es:");
//  println(n.id);
//  println("orderRight es:");
//  println(n.orderRight);
//  println("-----------");
acomodar(Tronco[int(n.derecha)]);
}

void Ordenar(Nodos n){
  nuevoX[posnuevoX]=int (n.valor);
  n.orden= true;
  posnuevoX++;
//  println("ID es:");
//  println(n.id);
//  println("order es:");
//  println(n.order);
//  println("orderLeft es:");
//  println(n.orderLeft);
//  println("orderRight es:");
//  println(n.orderRight);
//  println("Right es:");
//  println(n.right);
//  println(newX);
//  println("-----------"); 
}

void irArriba(Nodos n){
 //  println("Subir");
 //  println("-----------");
 acomodar(Tronco[int(n.padre)]);
}
}
