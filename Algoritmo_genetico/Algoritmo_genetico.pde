PFont f;
String objetivo;
int maxpop;
float mutacion;
float tiempo;
Population POP;

void setup() {
  size(640, 360);
  f = createFont("Arial", 32, true);
  objetivo = "1631906/1627854";
  maxpop = 150;
  mutacion = 0.01;

  // Create a populationation with a target phrase, mutation rate, and populationation max
  POP = new Population(objetivo, mutacion, maxpop);
}

void draw() {
  // Generate mating pool
  POP.naturalSelection();
  
  //Create next generation
  POP.generate();
  
  // Calculate fitness
  POP.calcFitness();
  Informacion();

  // If we found the target phrase, stop
  if (POP.finished()) {
    tiempo = millis()/1000.0;
    textSize(18);
    text("Tiempo total: " + tiempo + " segundos", 20, 210);
    noLoop();
  }
}

void Informacion() {
  background(0);
  // Display current status of populationation
  String respuesta = POP.getBest();
  textFont(f);
  textAlign(LEFT);
  fill(255);
  
  
  textSize(24);
  text("Mejor frase:",20,30);
  textSize(40);
  text(respuesta, 20, 80);

  textSize(18);
  text("N° Generaciones: " + POP.getGenerations(), 20, 130);
  text("Nivel de acertacion: " + nf(POP.getAverageFitness(), 0, 2), 20, 150);
  text("Populacion: " + maxpop, 20, 170);
  text("Porcentaje mutacion: " + int(mutacion * 100) + "%", 20, 190);
 
  textSize(15);
  text("Todas las frases:\n" + POP.allPhrases(), 500, 15);
}
