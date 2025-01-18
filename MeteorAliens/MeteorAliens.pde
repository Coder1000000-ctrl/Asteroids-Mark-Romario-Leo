ArrayList<Ball> ballGroup;
ArrayList<EnemyFire> EnemyFireGroup;
int enemyAmmo = 1;
int[] numsx = new int[6];
int[] numsy = new int[2];
int cordx;
int cordy;
//Ball[] ballGroup;
//int pos = 0;



void setup() { // Happens once at launch
    int x = 150;
    int y = 50;
    int x2 = 150;
    int y2 =50;

int[] numsx = {150, 350, 550, 750, 950, 1150};
int[] numsy = {50, 250};



    size(1400, 800);
    background(0,0,0);
    ballGroup = new ArrayList<Ball>();

    ballGroup.add( new Ball(x, x2, y, y2,  50, false) );
    EnemyFireGroup = new ArrayList<EnemyFire>();
   
}

void draw() { // Happens constantly (screen refresh)
    background(0,0,0);
int randx = (int)(Math.random()*6);
int randy = (int)(Math.random()*2);
cordx = numsx[randx];
cordy = numsy[randy];

    for (Ball theBall : ballGroup) {
    //   theBall.move();
      
      //Check against other objects in group
      for (Ball otherBall : ballGroup) {
        if(theBall != otherBall) {
          //theBall.checkCollision(otherBall);
      }

      if (millis() % 999 >= 0 && millis() % 999 <= 15) {
        enemyAmmo = 1;
    }

  
      if (enemyAmmo >0){
      EnemyFireGroup.add(new EnemyFire(cordx, cordy));
      enemyAmmo--;
      }
      for (EnemyFire theEnemyFire : EnemyFireGroup) {
     theEnemyFire.move();
   
     theEnemyFire.display();
    }

        theBall.display();

      }
    }
}

class Ball {
    int cirx, x2, ciry, y2,  r;
    int dx, dy; //Speed or Velocity
    int cr, cg, cb; //RGB Values
    int grav; //Gravity


    //Constructor
    Ball(int tempx, int tempx2, int tempy, int tempy2, int tempr, boolean tempinf) {
        cirx = 50; //set the x cord
        x2 = 50;
        ciry = 50; //set the y cord
        y2 = 50;
        r = tempr; //set the radius
        

        //Set the colour
        cr = 255;
        cg = 255;
        cb = 0;

    }

    void display() {
        stroke(255);
        fill(cr, cg, cb);
        //circle(cirx,ciry,r*2);
  
        //Row 1
        circle(cirx+ 100,ciry,r*2);
        circle(cirx+ 300,ciry,r*2);
        circle(cirx+ 500,ciry,r*2);
        circle(cirx+ 700,ciry,r*2);
        circle(cirx+ 900,ciry,r*2);
        circle(cirx+ 1100,ciry,r*2);
     

        //Row 2
    
        circle(cirx+ 100,ciry +150,r*2);
        circle(cirx+ 300,ciry +150,r*2);
        circle(cirx+ 500,ciry +150,r*2);
        circle(cirx+ 700,ciry +150,r*2);
        circle(cirx+ 900,ciry +150,r*2);
        circle(cirx+ 1100,ciry +150,r*2);
  
    }
    }

    class EnemyFire {
    float bulletx, bullety;
    EnemyFire(float tempx, float tempy) {
        bulletx = tempx; //set the x cord
        bullety = tempy; //set the y cord
    }

    void display() {
        fill(128, 0, 128);
        rectMode(CENTER);
        rect(bulletx, bullety, 5, 35);
    }
    void move() {
        
        bullety = bullety + 5;
    }
}

