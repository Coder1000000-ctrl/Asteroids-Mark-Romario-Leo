float x;
float y;

void setup() {
    size(1680, 720);
    background(0);
    x = width/2;
    y = height/1.2;
}

void draw() { // Happens constantly (screen refresh)
    background(0);

    display();
  
    }




void display() {
    stroke(255);
    fill(0);
    rectMode(CENTER);
    triangle(x, y, x-20, y+60, x+20, y+60);

  
    
}
void keyPressed(){
    // if (key == 'w' ){
    // }
     if (key == 'd') {
        x= x+10;

    }
    //  if (key == 's') {
    //  }

     if (key == 'a') {
        x=x-10;
        
    }
}