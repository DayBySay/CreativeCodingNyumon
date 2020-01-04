int num = 10000;
float[] x = new float[num];
float[] y = new float[num];

void setup() {
    size(800, 600, P2D);    
    frameRate(60);
    background(0);

    for (int i = 0; i < num; ++i) {
        x[i] = width / 2;
        y[i] = height / 2;
    }
}

void draw() {
    stroke(255);
    noFill();
    blendMode(ADD);

    for (int i = 0; i < num; ++i) {
        point(x[i], y[i]);
        x[i] += random(-4.0, 4.0);
        y[i] += random(-4.0, 4.0);
    }
}
