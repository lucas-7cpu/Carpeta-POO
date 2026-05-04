void setup(){
  size(1000, 500);
}

void draw(){
   dibujarbandera();
}

void dibujarbandera()
{
   int h=height, w=width;
   //Fondo blanco.
   stroke(#FFFFFF);
   fill(#FFFFFF);
   rect(0, 0, w, h);
   
   //Rayas celestes:
   stroke(#6FC2FF);
   fill(#6FC2FF);
   
   rect(0, 0, w, h/4.5);       //Superior.
   rect(0, h-h/4.5, w, h/4.5); //Inferior.
   
   //Sol.
   stroke(#FFDD2E);
   fill(#FFDD2E);
   circle(w/2, h/2, h/4.5);
}
