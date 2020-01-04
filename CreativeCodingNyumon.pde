int num = 10000;
float[] x = new float[num];
float[] y = new float[num];

void setup() {
    size(800, 600, P2D);    
    frameRate(60);
    background(0);

    for (int i = 0; i < num; ++i) {
        x[i] = random(width);
        y[i] = random(height);
    }
}

void draw() {
    blendMode(ADD);
    stroke(63);
    noFill();

    for (int i = 0; i < num; ++i) {
        point(x[i], y[i]);
        x[i] += random(-1.0, 1.0);
        y[i] += random(-1.0, 1.0);
    }

    blendMode(BLEND);
    noStroke();
    fill(0, 3);
    rect(0, 0, width, height);
}
