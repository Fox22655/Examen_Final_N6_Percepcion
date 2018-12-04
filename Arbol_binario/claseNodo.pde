class Nodos {
  //Atributos
  String id;
  String padre;
  String valor;
  String izquierda;
  String derecha;
  boolean orden;
  boolean ordenIzquierda;
  boolean ordenDerecha;
  //Constructor para un nodo raíz
  Nodos(int v) {
    id = "0";
    padre = null;
    valor = str(v);
    izquierda = null;
    derecha = null;
    orden = false; 
    ordenIzquierda = false;
    ordenDerecha = false;
  }

//Constructor para nodo rama
  Nodos(int i, int p, int v) {
    id = str(i);
    padre = str(p);
    valor = str(v);
    izquierda = null;
    derecha = null;
    orden = false;
    ordenIzquierda = false;
    ordenDerecha = false;
  }
  //Métodos
}
