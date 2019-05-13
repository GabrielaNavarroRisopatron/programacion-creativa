class Objeto {
  String fecha;
  int maxT, mediaT, minT, humax, humedia, humin, wind, in;
  float x, y; 
  color tu, bl, ve, ne, am, ma, na, e, h, k;

  Objeto(String fecha, int maxT, int mediaT, int minT, int humax, int humedia, int humin, int wind) {
    rectMode(CENTER);
    this.fecha = fecha;
    this.maxT = maxT;
    this.mediaT = mediaT;
    this.minT = minT;
    this.humax = humax;
    this.humedia = humedia;
    this.humin = humin;
    this.wind = wind;
    x = 0;
    y = 0;
    tu = color(63, 201, 188);                 // Turquesa
    bl = color(255);                          // Blanco
    ve = color(159, 229, 125);                // Verde
    ne = color(0);                            // Negro
    am = color(254, 255, 6);                  // Amarillo
    na = color(255, 128, 0);                  // Naranjo
    ma = color(199, 21, 133);                 // Magenta
  }

  void display() {
  }

  void temperatura() {

    float si = map(minT, 20, 25, 0, 1);  
    float sip = map(mediaT, 23, 29, 0, 1);  
    float sipo = map(maxT, 26, 35, 0, 1);
    
    e = lerpColor(tu, bl, si);
    h = lerpColor(ve, na, sip);
    k = lerpColor( ma, am, sipo);

    pushMatrix();
    translate(width / 2, height / 2);
    rotate(radians(in * 360 / 365));
    strokeWeight(2);
    stroke(bl, 100);
    line(340, 0, si, 0);
    popMatrix();

    pushMatrix();
    translate(width / 2, height / 2);
    rotate(radians(in * 360 / 365));
    strokeWeight(2);
    stroke(am, 150);
    line(320, 0, sip, 0);
    popMatrix();

    pushMatrix();
    translate(width / 2, height / 2);
    rotate(radians(in * 360 / 365));
    strokeWeight(2);
    stroke(ma, 70);
    line(300, 0, sipo, 0);
    popMatrix();
  }

  void humedad() {
    float moja = map(humin, 23, 87, 0, 1);
    float mojad = map(humedia, 75, 93, 0, 1);
    float mojado = map(humax, 94, 100, 0, 1); 
  }

  void viento() {
    float nube = map(wind, 1, 357, 0, 1);
  }
}
