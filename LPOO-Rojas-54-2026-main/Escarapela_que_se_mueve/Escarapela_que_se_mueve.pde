//Este programa dibuja la escarapela Escarapela.

//Con esta funcion le damos la forma que quedramos a la ventana.
void setup() {
  size(900, 678);
}

//Con esta funcion decimos que dibujar, y como hacerlo,
void draw(){
  if(mousePressed){background(#FFFFFF);}
  else            {background(#0A0000);}
  escarapela(width, height, mouseX, mouseY);
}

void escarapela(float w, float h, float mx, float my){
    
  //El orden de las figuras determina su posicion. La primera esta por debajo de todas, la ultima por encima de todas.
  
  //circle(x, y, radio);
  
  //Si el raton estaa en el centro.
  if(mx<w*3/4 && mx>w*1/4)
  {
      //Circulo mas grande.
      stroke(#273876);                //Color del contorno. (Azul oscuro).
      strokeWeight(h/150);            //Grosor del contorno.
      fill(#FFFFFF);                  //Color del relleno.  (Blanco).
      circle(mx, h-my, w/2);
  
      //2° Circulo mas grande.
      stroke(#4F98F5);
      strokeWeight(h/100);
      fill(#4F98F5);
      circle(mx, h-my, w/2.2);
 
      //Circulo mediano.
      stroke(#FFFFFF);
      strokeWeight(h/100);
      fill(#4F98F5);
      circle(mx, h-my, w/2.9);
 
      //Circulo Blanco.
      stroke(#FFFFFF);
      strokeWeight(h/80);
      fill(#FFFFFF);
      circle(mx, h-my, w/3.5);
 
      //Circulo amarillo.
      stroke(#FAF023);
      fill(#FAF023);
      circle(mx, h-my, w/9);
      }

  else{
    //Si el raton esta sobre la izquierda.
    if(mx<w*1/4)
    {
      //Circulo mas grande.
      stroke(#273876);                //Color del contorno. (Azul oscuro).
      strokeWeight(h/150);            //Grosor del contorno.
      fill(#FFFFFF);                  //Color del relleno.  (Blanco).
      circle(w*1/4, h-my, w/2);
  
      //2° Circulo mas grande.
      stroke(#4F98F5);
      strokeWeight(h/100);
      fill(#4F98F5);
      circle(w*1/4, h-my, w/2.2);
 
      //Circulo mediano.
      stroke(#FFFFFF);
      strokeWeight(h/100);
      fill(#4F98F5);
      circle(w*1/4, h-my, w/2.9);
 
      //Circulo Blanco.
      stroke(#FFFFFF);
      strokeWeight(h/80);
      fill(#FFFFFF);
      circle(w*1/4, h-my, w/3.5);
 
 
      //Si el raton esta en la izquierda y sobre el circulo amarillo, el circulo se mueve.
      if(mx>(w*1/4 - w/9))
      {
          //Para que el circulo amarillo se quede dentro del blanco.
          if((mx + w/9) > (w + w/3.5))
          {
          //Circulo amarillo.
          stroke(#FAF023);
          fill(#FAF023);
          circle(w*1/4 + w/3.5, h-my, w/9);
          }
          
          //Si no se pasa respeta las distancias.
          else
          {
          //Circulo amarillo.
          stroke(#FAF023);
          fill(#FAF023);
          circle(mx + w/9, h-my, w/9);
          }
      }
      else{stroke(#FAF023);   fill(#FAF023);    circle(w*1/4, h-my, w/9);}
    }
     
      //Si el raton esta sobre la derecha.
      else
      {
      //Circulo mas grande.
      stroke(#273876);                //Color del contorno. (Azul oscuro).
      strokeWeight(h/150);            //Grosor del contorno.
      fill(#FFFFFF);                  //Color del relleno.  (Blanco).
      circle(w*3/4, h-my, w/2);
  
      //2° Circulo mas grande.
      stroke(#4F98F5);
      strokeWeight(h/100);
      fill(#4F98F5);
      circle(w*3/4, h-my, w/2.2);
 
      //Circulo mediano.
      stroke(#FFFFFF);
      strokeWeight(h/100);
      fill(#4F98F5);
      circle(w*3/4, h-my, w/2.9);
 
      //Circulo Blanco.
      stroke(#FFFFFF);
      strokeWeight(h/80);
      fill(#FFFFFF);
      circle(w*3/4, h-my, w/3.5);

      //Si el raton esta en la derecha y sobre el circulo amarillo, el circulo se mueve.
      if(mx<(w*3/4 + w/9))
      {
          //Para que el circulo amarillo se quede dentro del blanco.
          if((mx + w/9) > (w + w/3.5))
          {
          //Circulo amarillo.
          stroke(#FAF023);
          fill(#FAF023);
          circle(w*3/4 - w/3.5 + w/8, h-my, w/9);
          }
          
          //Si no se pasa, respeta las distancias.
          else
          {
          //Circulo amarillo.
          stroke(#FAF023);
          fill(#FAF023);
          circle(mx - w/9, h-my, w/9);
          }

      }
      else{stroke(#FAF023);   fill(#FAF023);   circle(w*3/4, h-my, w/9);}
     }
  }
}
