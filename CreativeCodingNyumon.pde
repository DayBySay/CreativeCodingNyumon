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
    stroke(255);
    noFill();

    for (int i = 0; i < num; ++i) {
        point(x[i], y[i]);
        x[i] += random(-1.0, 1.5);
        y[i] += random(-0.5, 1.2);

        if(x[i] < 0) {
            x[i] = width;
        }
        if(x[i] > width) {
            x[i] = 0;
        }
        if(y[i] < 0) {
            y[i] = height;
        }
        if(y[i] > height) {
            y[i] = 0;
        }
    }


    blendMode(BLEND);
    noStroke();
    fill(0, 11);
    rect(0, 0, width, height);
}
