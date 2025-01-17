int lives = 1;

void setup() {
size(1400, 800);
    background(0);
}
void draw() {
background(0);
if (lives >= 2) {
    fill(0);
    stroke (255);
    triangle(40,20,20,80,60,80);

}
if (lives >= 3) {
    fill(0);
    stroke (255);
    triangle(100,20,80,80,120,80);

}
if (lives == 4) {
    fill(0);
    stroke (255);
    triangle(160,20,140,80,180,80);

}
} 
