/*
En este ejercicio, exploraremos cómo el uso de bucles for y variables proporcionales nos permite generar patrones visuales complejos con muy pocas líneas de código. 
Trabajaremos sobre el concepto de interpolación lineal, conectando puntos que se distribuyen en los ejes X e Y de forma coordinada.
Código de Base:

int cant = 10;
int sepx, sepy;
void setup() {
  size(800, 600);
  sepx = width/cant;
  sepy = height/cant;
}

void draw() {
  background(255);
  for (int i = 0; i<cant; i++) {
    line(0, i*sepy, i*sepx, height);
  }
}
Parte 1: Análisis Matemático (Carpeta)

Cálculo de Intervalos: Si el ancho (width) es 800 y cant es 10,
¿cuánto vale la variable sepx? RTA:  80. 

Si cambiamos cant a 20, ¿qué sucede con el valor de sepx y qué efecto visual crees que tendrá en el dibujo? RTA: sepx va a ser 40 y va a ha

Rastreo de Coordenadas: Completa una tabla para cuando el programa tenga 10 lineas mostrando el valor de los 4 parámetros de entrada del procedimiento line. 

Finalmente vamos a crear una composición simétrica donde las "Curvas" ocupen los cuatro vértices de la pantalla, cruzándose en el centro.

Para que esto pase, debemos usar expresiones. Por ejemplo: width - (i * sepx) hace que el punto avance de derecha a izquierda.
Añade una segunda línea dentro del bucle for que aparezca en el vértice superior derecho.
Añade una Tercera línea dentro del bucle for que aparezca en el  vértice inferior derecho.
Añade una Cuarta línea dentro del bucle for que aparezca en el  vértice inferior izquierdo.
El código fuente final con comentarios que expliquen qué vértice representa cada línea de comando subanlo a su repositorio
*/


int cant = 20; 
int sepx, sepy;

void setup() {
  size(800, 600);
  sepx = width / cant;
  sepy = height / cant;
}

void draw() {
  background(255);
  stroke(0);

  for (int i=0; i<cant; i++) {
    //Original (Abajo izquierda)
    line(0, i * sepy, i * sepx, height);


    //Arriba Derecha 
    line(width, height - (i * sepy), width - (i * sepx), 0);

    //Arriba Izquierda.
    line(0, height - (i * sepy), i * sepx, 0);

    // Abajo Derecha.
    line(width, i * sepy, width - (i * sepx), height);
    
  }
}
