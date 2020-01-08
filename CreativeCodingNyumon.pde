PVector fource;
PVector acceleration;
PVector location;
PVector velocity;
float mass;

void setup() {
    size(800, 600);
    frameRate(60);
    location = new PVector(0, 0);
    velocity = new PVector(0, 0);
    fource = new PVector(3, 2);
    mass = 1;
    acceleration = fource.mult(mass);
}

void draw() {
   fill(0, 31);
   rect(0, 0, width, height);
   fill(255);
   noStroke();
   velocity.add(acceleration);
   location.add(velocity);
   acceleration.set(0, 0);
   ellipse(location.x, location.y, 20, 20); 
}
