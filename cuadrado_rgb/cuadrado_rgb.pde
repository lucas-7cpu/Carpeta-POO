void setup(){
  size(500, 400);
}

void draw(){
 proce();
 }
 
void proce(){
 int w = width, h = height;
  rect(w/4 , h/4, w/2, h/2);
  fill(random(255),random(255), random(255));
  stroke (random(255),random(255), random(255));
 }
