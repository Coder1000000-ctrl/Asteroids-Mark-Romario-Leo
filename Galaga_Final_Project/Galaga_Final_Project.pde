
ArrayList<Bullet> bulletGroup;
ArrayList<Ball> ballGroup;
ArrayList<EnemyFire> EnemyFireGroup;
float x;
float y;
int ammo = 1;
int enemyAmmo = 1;
int moveState = 0;
int moveStep = 5;
boolean shootState = false;


void setup() {
    size(1400, 800);
    background(0);
    x = width/2;   
    y = height/1.2;
    bulletGroup = new ArrayList<Bullet>();
    ballGroup = new ArrayList<Ball>();
    EnemyFireGroup = new ArrayList<EnemyFire>();
    for (int i=0; i<=11;i++) {
        if (i<=5){
        ballGroup.add( new Ball(175 + 200*i,75 ) );
    }
    else {
        ballGroup.add( new Ball(175 + 200*(i-6),225 ) );
    }
    }
    
}

void draw() { // Happens constantly (screen refresh)
    background(0);
    x = x + moveState;
    if (x>width-20){
        x = width-20;
    }
    if (x<20){
        x = 20;
    }
    if (shootState){
        if (ammo > 0) {
        bulletGroup.add(new Bullet(x,y));
        ammo--;
        }
    }
    display();
    for (Bullet theBullet : bulletGroup) {
     theBullet.move();
     for (Ball otherBall : ballGroup) {
          theBullet.checkCollision(otherBall);
      }
   
     theBullet.display();
    }
    if (millis() % 600 >= 0 && millis() % 600 <= 15) {
        ammo = 1;
        enemyAmmo = 1;
    }
    
    for (Ball theBall : ballGroup) {
        theBall.display();
    }
    if (enemyAmmo >0){
        int randx =(int)(Math.random()*6);

        int randy = (int)(Math.random()*2);
      EnemyFireGroup.add(new EnemyFire(175 + 200*randx, 75 +150*randy));
      
      enemyAmmo--;
      }
      for (EnemyFire theEnemyFire : EnemyFireGroup) {
     theEnemyFire.move();
   
     theEnemyFire.display();
}

}




void display() {
    stroke(255);
    fill(0);
    rectMode(CENTER);
    triangle(x, y, x-20, y+60, x+20, y+60); 
    
}

void keyPressed(){
    if (key == 'w' ){
        shootState = true;
    }
     if (key == 'd') {
        moveState = moveStep;
    }
    if (key == 'a') {
        moveState = -1*moveStep; 
    }
    if (keyCode == UP ){  
        shootState = true;
    }
    if (keyCode == RIGHT) {
        moveState = moveStep;
    }
    if (keyCode == LEFT) {
        moveState = -1*moveStep;
    }
}

void keyReleased() {
    if (key == 'w' ){
        shootState = false;
    }
    if (key == 'd') {
        moveState = 0;
    }
    if (key == 'a') {
        moveState = 0;
    }
    if (keyCode == UP) {
        shootState = false;
    }
    if (keyCode == RIGHT) {
        moveState = 0;
    }
    if (keyCode == LEFT) {
        moveState = 0;
    }
}

class Bullet {
    float bulletx, bullety;
    Bullet(float tempx, float tempy) {
        bulletx = tempx; //set the x cord
        bullety = tempy; //set the y cord
    }
    void display() {
        fill(41,255,0);
        rectMode(CENTER);
        rect(bulletx, bullety, 5, 35);
    }
    void move() {
        bullety = bullety - 10;
    }
    void checkCollision(Ball otherBall) {
        double distanceApart = dist(bulletx, bullety, otherBall.cirx, otherBall.ciry);
        double threshold = 50;
        
        //Bounce the ball
        if (distanceApart < threshold) {
            //bulletGroup.remove(Bullet);
            ballGroup.remove(otherBall);
            
        }
        
        
    }
}
class Ball{
    int cirx, ciry,  r;
    int cr, cg, cb; //RGB Values

    //Constructor
    Ball(int tempx, int tempy) {
        cirx = tempx; //set the x cord
        ciry = tempy; //set the y cord
        r = 50; //set the radius
        

        //Set the colour
        cr = 255;
        cg = 255;
        cb = 255;

    }

    void display() {
        stroke(255);
        fill(cr, cg, cb);
        //circle(cirx,ciry,r*2);
  
        //Row 1
        circle(cirx,ciry,r*2);
       
  
    }
    
}
 class EnemyFire {
    float bulletx, bullety;
    EnemyFire(float tempx, float tempy) {
        bulletx = tempx; //set the x cord
        bullety = tempy; //set the y cord
    }

    void display() {
        fill(255, 0, 0);
        rectMode(CENTER);
        rect(bulletx, bullety, 5, 35);
    }
    void move() {
        
        bullety = bullety + 5;
    }
}
