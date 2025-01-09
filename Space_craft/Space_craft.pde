Triangle[] triangleGroup;
int pos = 0;

void setup() { // Happens once at launch
    size(1280, 720);
    background(0);
    triangleGroup = new Triangle[10000];
}

void draw() { // Happens constantly (screen refresh)
    background(0);

    for (int i = 0; i < pos; i++) {
        triangleGroup[i].display();
        //triangleGroup[i].move();
    }

}

void mousePressed() {
    if(pos < triangleGroup.length){
    triangleGroup[pos] = new Triangle(mouseX, mouseY, 100);
    pos++; //Next empty position
}
}







class Triangle {
    int x, y, r;
    int cr, cg, cb; //RGB Values
    

    //Constructor
    Triangle(int tempx, int tempy) {
        x = tempx; //set the x cord
        y = tempy; //set the y cord
        

        //Set the colour
        cr = 0;
        cg = 0;
        cb = 0;

       
    }

    void display() {
        stroke(255);
        fill(cr, cg, cb);
        triangle(x,y,x-20,y+50,x+20,y+50);
    }

    
}