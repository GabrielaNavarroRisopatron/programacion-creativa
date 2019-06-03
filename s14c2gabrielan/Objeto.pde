class Objeto {
  int   minT, maxT, mediaT, in, humax, humin, humedia, windmax, wind, windmedia, mediadew, mindew, dew, maxvis, mediavis, minvis;
  color tu, bl, ve, ne, am, ma, na;
  String dia, mes;
  float i;

  //Constructor
  Objeto(String dia, String mes, int in, int maxT, int mediaT, int minT, int humax, int humedia, int humin, int windmax, int wind, int windmedia, int mediadew, int mindew, int dew, int maxvis, int mediavis, int minvis) {

    // Declaración de variables
    rectMode(CENTER);

    this.in = in;
    this.dia = dia;
    this.mes = mes;
    this.minT = minT;
    this.mediaT = mediaT;
    this.maxT = maxT;
    this.humax = humax;
    this.humedia = humedia;
    this.humin = humin;
    this.windmax = windmax;
    this.windmedia = windmedia;
    this.wind = wind;
    this.mediadew = mediadew;
    this.mindew = mindew;
    this.dew =dew;
    this.maxvis = maxvis;
    this.mediavis = mediavis;
    this.minvis = minvis;

    // Declaración de variable colores
    tu = color(63, 201, 188);                 // Turquesa
    bl = color(255);                          // Blanco
    ve = color(159, 229, 125);                // Verde
    ne = color(0);                            // Negro no se usa
    am = color(254, 255, 6);                  // Amarillo
    na = color(255, 128, 0);                  // Naranjo
    ma = color(199, 21, 133);                 // Magenta
  }


  /* EN ESTE VOID LO QUE SE HARÁ SERÁ REPRESENTAR MEDIANTE ELIPSES EL AÑO 2015.
   EL DATO A EVALUAR SON LA MÁXIMA, MEDIA Y MÍNIMA DE LA TEMPERATURA.
   LOS COLORES A UTILIZAR SON TURQUESA, BLANCO, MAGENTA.
   ESTE DATO SERÁ COMPARADO CON 3 DATOS MÁS.*/
  // VOID TEMPERATURA
  void temperatura() {
    float si = map(minT, 20, 32, 0, 1);  
    float sip = map(mediaT, 24, 31, 0, 1);
    float sipo = map(maxT, 29, 35, 0, 1);

    // MÍNIMA TEMPERATURA
    pushMatrix();
    translate(width / 4, height / 4);
    rotate(radians(in * 360/ 365 ));                                 // POSICIÓN
    strokeWeight(2);                                                 // GROSOR DE LINEA 2 px
    stroke(bl);                                                      // COLOR BLANCO
    ellipse(minT*4.5, 0, si, 0);              
    popMatrix();

    // MÍNIMA TEMPERATURA
    pushMatrix();
    translate(width / 4, height / 4);
    rotate(radians(in * 360 / 365 ));                                // POSICIÓN
    strokeWeight(2);                                                 // GROSOR LÍNEA 2px
    stroke(tu);                                                      // COLOR TURQUESA
    ellipse(mediaT*4.5, 0, sip, 0);
    popMatrix();

    // MÁXIMA TEMPERATURA
    pushMatrix();
    translate(width / 4, height /4);
    rotate(radians(in * 360 / 365));                                 // POSICIÓN
    strokeWeight(2);                                                 // GROSOR DE LINEA 2 px
    stroke(na);                                                      // COLOR AMARILLO
    ellipse(maxT*4.5, 0, sipo, 0);
    popMatrix();
  }


  /* EN ESTE VOID LO QUE SE HARÁ SERÁ REPRESENTAR MEDIANTE ELIPSES EL AÑO 2015.
   EL DATO A EVALUAR SON LA MÁXIMA, MEDIA Y MÍNIMA DE LA VISIBILIDAD.
   LOS COLORES A UTILIZAR SON TURQUESA, BLANCO, MAGENTA.
   ESTE DATO SERÁ COMPARADO CON 3 DATOS MÁS.*/
  // VOID HUMEDAD
  void humedad() {
    float moja = map(humin, 23, 87, 0, 1);
    float mojad = map(humedia, 66, 93, 0, 1);
    float mojado = map(humax, 79, 100, 0, 1);

    // MÍNIMA HUMEDAD
    pushMatrix();
    translate(width / 1.4, height / 1.4);
    rotate(radians(in * 360 / 365));                                 // POSICIÓN
    strokeWeight(2);                                                 // GROSOR DE LINEA 2 px
    stroke(bl);                                                      // COLOR AMARILLO
    fill(bl);
    ellipse(humin*1.5, 0, moja, 0);
    popMatrix();

    // MEDIA HUMEDAD
    pushMatrix();
    translate(width / 1.4, height / 1.4);
    rotate(radians(in * 360 / 365));                                 // POSICIÓN
    strokeWeight(2);                                                 // GROSOR DE LINEA 2 px
    stroke(tu);                                                      // COLOR AMARILLO
    fill(tu);
    ellipse(humedia*1.5, 0, mojad, 0);
    popMatrix();

    // MÁXIMA HUMEDAD
    pushMatrix();
    translate(width / 1.4, height / 1.4);
    rotate(radians(in * 360 / 365));                                 // POSICIÓN
    strokeWeight(2);                                                 // GROSOR DE LINEA 2 px
    stroke(na);                                                      // COLOR AMARILLO
    fill(na);
    ellipse(humax *1.5, 0, mojado, 0);
    popMatrix();
  }

  /* EN ESTE VOID LO QUE SE HARÁ SERÁ REPRESENTAR MEDIANTE LÍNEAS EL AÑO 2015.
   EL DATO A EVALUAR SON LA MÁXIMA, MEDIA Y MÍNIMA DE LA NEBLINA.
   LOS COLORES A UTILIZAR SON BLANCO, AMARILLO, .MAGENTA
   AQUÍ SE VE A MAS DETALLE (MÁS DE CERCA) LOS DATOS ANUALES*/
  // VOID VIENTO
  void viento() {
    float nub = map(wind, 1, 357, 0, 1);
    float nube = map(windmedia, 2, 37, 0, 1);
    float nubes = map(windmax, 8, 167, 0, 1);

    // VIENTO 
    pushMatrix();
    translate(width / 2, height / 2);
    rotate(radians(in * 360 / 365));                                 // POSICIÓN
    strokeWeight(2);                                                 // GROSOR DE LINEA 2 px
    stroke(ma, 40);                                                  // COLOR AMARILLO CON TRANSPARENCIA
    line(wind, 0, nub, 0);
    popMatrix();

    // MEDIA VIENTO 
    pushMatrix();
    translate(width / 2, height / 2);
    rotate(radians(in * 360 / 365));                                 // POSICIÓN
    strokeWeight(2);                                                 // GROSOR DE LINEA 2 px
    stroke(am, 50);                                                  // COLOR AMARILLO CON TRANSPARENCIA
    line(windmedia, 0, nube, 0);
    popMatrix();

    // MÁXIMO VIENTO 
    pushMatrix();
    translate(width / 2, height / 2);
    rotate(radians(in * 360 / 365));                                 // POSICIÓN
    strokeWeight(2);                                                 // GROSOR DE LINEA 2 px
    stroke(bl, 60);                                                  // COLOR BLANCO CON TRANSPARENCIA 
    line(windmax, 0, nubes, 0);
    popMatrix();
  }


  /* EN ESTE VOID LO QUE SE HARÁ SERÁ REPRESENTAR MEDIANTE ELIPSES EL AÑO 2015.
   EL DATO A EVALUAR SON LA MÁXIMA, MEDIA Y MÍNIMA DE LA VISIBILIDAD.
   LOS COLORES A UTILIZAR SON TURQUESA, BLANCO, MAGENTA.
   ESTE DATO SERÁ COMPARADO CON 3 DATOS MÁS.*/
  void neblina() {
    float gr = map(mindew, 2, 25, 0, 1);
    float gri = map(mediadew, 21, 26, 0, 1);
    float gris= map(dew, 23, 28, 0, 1);

    //MÍNIMO NEBLINA
    pushMatrix();
    translate(700, 210);
    rotate(radians(in * 360 / 365));                                 // POSICIÓN
    strokeWeight(2);                                                 // GROSOR DE LINEA 2 px
    stroke(bl);                                                      // COLOR BLANCO
    fill(bl);                                                        // COLOR BLANCO
    ellipse(mindew * 5, 0, gr, 0);
    popMatrix();

    // MEDIA NEBLINA
    pushMatrix();
    translate(700, 210);
    rotate(radians(in * 360 / 365));                                 // POSICIÓN
    strokeWeight(2);                                                 // GROSOR DE LINEA 2 px
    stroke(tu);                                                      // COLOR TURQUESA
    fill(tu);                                                        // COLOR TURQUESA
    ellipse(windmedia *5, 0, gri, 0);
    popMatrix();

    // NEBLINA
    pushMatrix();
    translate(700, 210);
    rotate(radians(in * 360 / 365));                                 // POSICIÓN
    strokeWeight(2);                                                 // GROSOR DE LINEA 2 px
    stroke(na);                                                      // COLOR NARANJO
    fill(na);                                                        // COLOR NARANJO
    ellipse(dew * 5, 0, gris, 0);
    popMatrix();
  }

  /* EN ESTE VOID LO QUE SE HARÁ SERÁ REPRESENTAR MEDIANTE ELIPSES EL AÑO 2015.
   EL DATO A EVALUAR SON LA MÁXIMA, MEDIA Y MÍNIMA DE LA VISIBILIDAD.
   LOS COLORES A UTILIZAR SON TURQUESA, BLANCO, MAGENTA.
   ESTE DATO SERÁ COMPARADO CON 3 DATOS MÁS.*/

  void visibilidad() {
    float neg = map(minvis, 0, 10, 0, 1);
    float negr = map(mediavis, 7, 10, 0, 1);
    float negro = map(maxvis, 10, 31, 0, 1);

    // MÍNIMA VISIBILIDAD
    pushMatrix();
    translate(250, 600);
    rotate(radians(in * 360 / 365));                                 // POSICIÓN
    strokeWeight(2);                                                 // GROSOR DE LINEA 2 px
    stroke(tu);                                                      // COLOR TURQUESA
    fill(tu);                                                        // COLOR TURQUESA
    ellipse(minvis * 5, 0, neg, 0);
    popMatrix();

    // MEDIA VISIBILIDAD
    pushMatrix();
    translate(250, 600);
    rotate(radians(in * 360 / 365));                                 // POSICIÓN
    strokeWeight(2);                                                 // GROSOR DE LINEA 2 px
    stroke(bl);                                                      // COLOR BLANCO
    fill(bl);                                                        // COLOR BLANCO
    ellipse(mediavis * 5, 0, negr, 0);
    popMatrix();

    // MÁXIMA VISIBILIDAD
    pushMatrix();
    translate(250, 600);
    rotate(radians(in * 360 / 365));                                 // POSICIÓN
    strokeWeight(2);                                                 // GROSOR DE LINEA 2 px
    stroke(na);                                                      // COLOR NARANJO
    fill(na);                                                        // COLOR NARANJO
    ellipse(maxvis * 5, 0, negro, 0);
    popMatrix();
  }


  /* EN ESTE VOID LO QUE SE HARÁ SERÁ REPRESENTAR MEDIANTE ELIPSES EL AÑO 2015.
   EL DATO A EVALUAR SON LA MÁXIMA, MEDIA Y MÍNIMA DE LA TEMPERATURA.
   LOS COLORES A UTILIZAR SON TURQUESA, AMARILLO, NARANJO
   AQUÍ SE VE A MAS DETALLE (MÁS DE CERCA) LOS DATOS ANUALES*/
  void temperatura1() {
    float si = map(minT, 23, 28, 0, 1);  
    float sip = map(mediaT, 24, 30, 0, 1);
    float sipo = map(maxT, 29, 35, 0, 1);

    // MÍNIMA TEMPERATURA
    pushMatrix();
    translate(width / 2, height / 2);
    rotate(radians(in * 360/ 365 ));                                 // POSICIÓN
    stroke(tu);                                                      // COLOR TURQUESA
    fill(tu);                                                        // COLOR TURQUESA
    ellipse(minT*10, 0, si, 0);
    popMatrix();

    // MÍNIMA TEMPERATURA
    pushMatrix();
    translate(width / 2, height / 2);
    rotate(radians(in * 360 / 365 ));                                 // POSICIÓN
    stroke(ve);                                                       // COLOR VERDE
    fill(ve);                                                         // COLOR VERDE
    ellipse(mediaT *10, 0, sip, 0);
    popMatrix();

    // MÁXIMA TEMPERATURA
    pushMatrix();
    translate(width / 2, height / 2);
    rotate(radians(in * 360 / 365));                                 // POSICIÓN
    stroke(na);                                                      // COLOR NARANJO
    fill(na);                                                        // COLOR NARANJO
    ellipse(maxT*10, 0, sipo, 0);
    popMatrix();
  }


  /* EN ESTE VOID LO QUE SE HARÁ SERÁ REPRESENTAR MEDIANTE ELIPSES EL AÑO 2015.
   EL DATO A EVALUAR SON LA MÁXIMA, MEDIA Y MÍNIMA DE LA HUMEDAD.
   LOS COLORES A UTILIZAR SON VERDE, AMARILLO, MAGENTA
   AQUÍ SE VE A MAS DETALLE (MÁS DE CERCA) LOS DATOS ANUALES*/
  // VOID HUMEDAD
  void humedad1() {
    float moja = map(humin, 23, 87, 0, 1);
    float mojad = map(humedia, 75, 93, 0, 1);
    float mojado = map(humax, 94, 100, 0, 1);

    // MÍNIMA HUMEDAD
    pushMatrix();
    translate(width / 2, height / 2);
    rotate(radians(in * 360 / 365));                                 // POSICIÓN
    stroke(ma);                                                      // COLOR MAGENTA
    fill(ma);                                                        // COLOR MAGENTA
    ellipse(humin*3.5, 0, moja, 0);
    popMatrix();

    // MEDIA HUMEDAD
    pushMatrix();
    translate(width / 2, height / 2);
    rotate(radians(in * 360 / 365));                                 // POSICIÓN
    stroke(am);                                                      // COLOR AMARILLO
    fill(am);                                                        // COLOR AMARILLO
    ellipse(humedia*3.5, 0, mojad, 0);
    popMatrix();

    // MÁXIMA HUMEDAD
    pushMatrix();
    translate(width / 2, height / 2);
    rotate(radians(in * 360 / 365));                                 // POSICIÓN
    stroke(ve);                                                      // COLOR VERDE
    fill(ve);                                                        // COLOR VERDE
    ellipse(humax *3.5, 0, mojado, 0);
    popMatrix();
  }


  /* EN ESTE VOID LO QUE SE HARÁ SERÁ REPRESENTAR MEDIANTE ELIPSES EL AÑO 2015.
   EL DATO A EVALUAR SON LA MÁXIMA, MEDIA Y MÍNIMA DE LA NEBLINA.
   LOS COLORES A UTILIZAR SON VERDE, AMARILLO, NARANJO
   AQUÍ SE VE A MAS DETALLE (MÁS DE CERCA) LOS DATOS ANUALES*/
  void neblina1() {
    float gr = map(mindew, 13, 23, 0, 1);
    float gri = map(mediadew, 21, 24, 0, 1);
    float gris= map(dew, 23, 26, 0, 1);

    //MÍNIMO NEBLINA
    pushMatrix();
    translate(width / 2, height / 2);
    rotate(radians(in * 360 / 365));                                 // POSICIÓN
    stroke(ve);                                                      // COLOR VERDE
    fill(ve);                                                        // COLOR VERDE
    ellipse(mindew * 10, 0, gr, 0);
    popMatrix();

    // MEDIA NEBLINA
    pushMatrix();
    translate(width / 2, height / 2);
    rotate(radians(in * 360 / 365));                                 // POSICIÓN
    stroke(am);                                                      // COLOR AMARILLO
    fill(am);                                                        // COLOR AMARILLO
    ellipse(windmedia *10, 0, gri, 0);
    popMatrix();

    // NEBLINA
    pushMatrix();
    translate(width / 2, height / 2);
    rotate(radians(in * 360 / 365));                                 // POSICIÓN
    stroke(na);                                                      // COLOR NARANJO
    fill(na);                                                        // COLOR NARANJO
    ellipse(dew * 10, 0, gris, 0);
    popMatrix();
  }


  /* EN ESTE VOID LO QUE SE HARÁ SERÁ REPRESENTAR MEDIANTE ELIPSES EL AÑO 2015.
   EL DATO A EVALUAR SON LA MÁXIMA, MEDIA Y MÍNIMA DE LA VISIBILIDAD.
   LOS COLORES A UTILIZAR SON NARANJA, TURQUESA, BLANCO
   AQUÍ SE VE A MAS DETALLE(MÁS DE CERCA) LOS DATOS ANUALES*/
  void visibilidad1() {
    float neg = map(minvis, 0, 10, 0, 1);
    float negr = map(mediavis, 7, 10, 0, 1);
    float negro = map(maxvis, 10, 27, 0, 1);

    // MÍNIMA VISIBILIDAD
    pushMatrix();
    translate(width / 2, height / 2);
    rotate(radians(in * 360 / 360));                                 // POSICIÓN
    stroke(tu);                                                      // COLOR TURQUESA
    fill(tu);                                                        // COLOR TURQUESA
    ellipse(minvis *24, 0, neg, 0);
    popMatrix();

    // MEDIA VISIBILIDAD
    pushMatrix();
    translate(width / 2, height / 2);
    rotate(radians(in * 360 / 360));                                 // POSICIÓN
    stroke(bl);                                                      // COLOR BLANCO
    fill(bl);                                                        // COLOR BLANCO
    ellipse(mediavis * 24, 0, negr, 0);
    popMatrix();

    // MÁXIMA VISIBILIDAD
    pushMatrix();
    translate(width / 2, height / 2);
    rotate(radians(in * 360 / 360));                                 // POSICIÓN
    stroke(na);                                                      // COLOR NARANJO
    fill(na);                                                        // COLOR NARANJO
    ellipse(maxvis * 12, 0, negro, 0);
    popMatrix();
  }


  /* EN ESTE VOID LO QUE SE HARÁ SERÁ REPRESENTAR EL PRIMER SEMESTRE DEL AÑO 2015 MEDIANTE LINEAS VERTICALES.
   LOS DATOS A EVALUAR SON LA MÁXIMA Y MÍNIMA DE LA NEBLINA Y LA MÁXIMA Y MÍNIMA DE LA VISIBILIDAD.
   LOS COLORES A UTILIZAR SON NARANJA,TURQUESA, MAGENTA Y BLANCO*/
  void semestre(float i) {

    // NEBLINA
    strokeWeight(1.5);                                              // GROSOR DE LA LÍNEA  1.5 px
    stroke(na);                                                     // COLOR NARANJO
    line(i*5.5, 300 - dew, i*5.5, 200 - dew);                       // LÍNEAS QUE DEFINEN NIEBLA CON ESPACIADO DE 5.5
    stroke(tu);                                                     // COLOR TURQUESA
    line(i*5.5, 400 - mindew, i*5.5, 300 - dew);                    // LÍNEAS QUE DEFINEN NIEBLA MÍNIMA CON ESPACIADO DE 5.5

    //VISBILIDAD
    strokeWeight(1.5);                                              // GROSOR DE LA LÍNEA  1.5 px
    stroke(ma);                                                     // COLOR MAGENTA
    line(i*5.5, 550 - maxvis, i*5.5, 450 - maxvis);                 // LÍNEAS QUE DEFINEN VISIBILIDAD MÁXIMA CON ESPACIADO DE 5.5
    stroke(bl);                                                     // COLOR BLANCO
    line(i*5.5, 650 - minvis, i*5.5, 550 - maxvis);                 // LÍNEAS QUE DEFINEN VISIBILIDAD MÍNIMA  CON ESPACIADO DE 5.5
  }

  /* EN ESTE VOID LO QUE SE HARÁ SERÁ REPRESENTAR EL SEGUNDO SEMESTRE DEL AÑO 2015 MEDIANTE LINEAS VERTICALES.
   LOS DATOS A EVALUAR SON LA MÁXIMA Y MÍNIMA DE LA TEMPERATURA Y LA MÁXIMA Y MÍNIMA DE LA HUMEDAD.
   LOS COLORES A UTILIZAR SON NARANJA,VERDE, AMARILLO Y BLANCO*/
  void semestre2(float i) {

    // TEMPERATURA
    strokeWeight(1.5);                                              // GROSOR DE LA LÍNEA 1.5 px
    stroke(na);                                                     // COLOR NARANJO
    line((i - 181)*5.5, 300 - maxT, (i - 181)*5.5, 200 - maxT);     // LÍNEAS QUE DEFINEN TEMPERATURA MÁXIMA CON ESPACIADO DE 5.5
    stroke(ve);                                                     // COLOR VERDE
    line((i - 181)*5.5, 400 - minT, (i - 181)*5.5, 300 - maxT);     // LÍNEAS QUE DEFINEN TEMPERATURA MÍNIMA CON ESPACIADO DE 5.5

    //HUMEDAD
    strokeWeight(1.5);                                              // GROSOR DE LA LÍNEA 1.5 px
    stroke(am);                                                     // COLOR AMARILLO
    line((i - 181)*5.5, 600 - humax, (i - 181)*5.5, 500 - humax);   // LÍNEAS QUE DEFINEN HUMEDAD MÁXIMA CON ESPACIADO DE 5.5
    stroke(bl);                                                     // COLOR BLANCO
    line((i - 181)*5.5, 700 - humin, (i - 181)*5.5, 600 - humax);   // LÍNEAS QUE DEFINEN HUMEDAD MÍNIMA CON ESPACIADO DE 5.5
  }
}
