

void setup() {
    size(1280, 720);
    background(0);
}

void draw() { // Happens constantly (screen refresh)
    background(0);

    display();
  
    }




void display() {
    stroke(255);
    fill(0);
    rectMode(CENTER);
    triangle(width/2, height/1.2, width/2-20, height/1.2+60, width/2+20, height/1.2+60);

  
    
}

