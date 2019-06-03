// Universidad del Desarrollo - Facultad de Diseño - Diseño de Interacción Digital
// Programación Creativa- 2019
// Gabriela Navarro Risopatrón


/*AQUÍ SE PODRÁ VER LA REPRESENTACIÓN DE LOS DATOS DEL AÑO 2015, ESTO SE LOGRARÁ MEDIANTE ELIPSES Y LÍNEAS.
LOS DATOS A EVALUAR SON LOS SIGUIENTES: TEMPERATURA, HUMEDAD, VIENTO, NEBLINA Y VISIBILIDAD
CON LAS TECLAS "a - q - d - f - g - h - w - e - r - S" PODRÁN CAMBIAR DE VISUALIZACIÓN ENTRE LA INICIAL, TEMPERATURA ANUAL MÁS DE CERCA,
HUMEDAD ANUAL MÁS DE CERCA, VIENTO ANUAL MÁS DE CERCA, NEBLINA ANUAL  MÁS DE CERCA, VISIBILIDAD ANUAL MÁS DE CERCA, COMPARACIÓN DE 
TEM-HUM-NEB-VIS, COMPARACIÓN PRIMER SEMESTRE ENTRE NEBLINA Y VISIBILIDAD, COMPARACIÓN SEGUNDO SEMESTRE ENTRE TEMPERATURA Y HUMEDAD, GUARDAR
EN FORMATO TIFF RESPECTIVAMENTE. 
EL VIENTO ANUAL Y LAS COMPARACIONES SEMESTRALES ESTARÁN REPRESENTADAS MEDIANTE LINEAS, MIENTRAS QUE LOS DEMÁS DATOS SERÁN REPRESENTADOS
POR ELIPSES.
LOS COLORES A UTILIZAR SON: TURQUESA, BLANCO, VERDE, AMARILLO, NARANJO Y MAGENTA
*/

Objeto [] o;
//Declaración de variables
Table tabla;
PFont grande, chico;
int   c;
import processing.pdf.*;                   //Importar
boolean guardarTIFF;
color tu, bl, ve, ne, am, ma, na;

void setup() {
  // Tamaño del canvas 
  size(1000, 800);
  //fullScreen();
  // Color del fondo
  background(0);

  // Declaración de variable colores
  tu = color(63, 201, 188);                 // Turquesa
  bl = color(255);                          // Blanco
  ve = color(159, 229, 125);                // Verde
  ne = color(0);                            // Negro no se usa
  am = color(254, 255, 6);                  // Amarillo
  na = color(255, 128, 0);                  // Naranjo
  ma = color(199, 21, 133);                 // Magenta  
  c= 1;
  guardarTIFF = false;

  // Se carga la tabla
  tabla = loadTable("basedatos.csv", "header"); 
  o = new Objeto[tabla.getRowCount()];

  //Tipografía
  grande= createFont("HelveticaNeue-Bold", 20);
  chico = createFont("HelveticaNeue-Light ", 15);

  // Se lee la tabla
  for (int i = 0; i < tabla.getRowCount(); i++) {       
    int in = i;
    TableRow row = tabla.getRow(i);

    // Fecha
    String dia = row.getString("D");
    String mes = row.getString("M");

    //Temperatura
    int maxT = row.getInt("MaxT");
    int mediaT = row.getInt("MeanT");
    int minT = row.getInt("MinT");

    // HUMEDAD
    int humax= row.getInt("MaxHum");
    int humedia = row.getInt("MeanHum");
    int humin = row.getInt("MinHum");

    // VIENTO
    int windmax = row.getInt("MaxWind");
    int windmedia = row.getInt("MeanWind");
    int wind = row.getInt("Wind");

    //  NEBLINA
    int mediadew = row.getInt("MeanDew");
    int mindew = row.getInt("MinDew");
    int dew = row.getInt("Dew");

    // VISIBILIDAD
    int maxvis= row.getInt("MaxVisi");
    int mediavis = row.getInt("MeanVisi");
    int minvis = row.getInt("MinVisi");

    o[i] = new Objeto(dia, mes, in, maxT, mediaT, minT, humax, humedia, humin, windmax, wind, windmedia, mediadew, mindew, dew, maxvis, mediavis, minvis);
  }
}
void draw() {
  // TEXTO DESCRIPCIÓN GENERAL
  if (c ==1) {
    background(0);
    textFont(chico);
    fill(255);
    text("Certamen 2", 460, 350);
    text("3 de Junio 2019", 440, 370);
    text("Programación Creativa", 425, 390);
    text("Gabriela Navarro Risopatrón", 400, 410);
    text("Teclas: q - d - f - g - h - w - e -r ", 700, 760);
  }
  // SIMBOLOGÍA
  // TEMPERATURA
  if (c == 0) {
    background(0);
    textFont(chico);
    fill(bl);
    text("Teclas: a - q - d - f - g - h - w - e -r ", 700, 760);
    text("Base de Datos Temperatura Anual, 2015", 30, 760);
    fill(tu);
    text("Color Turquesa: Temperatura Máxima", 700, 30);
    fill(ve);
    text("Color Verde: Temperatura Media", 700, 50);
    fill(na);
    text("Color Naranja: Temperatura Mínima", 700, 70);
  }

  for (int i = 0; i < o.length; i++) {
    if (c == 0) {
      o[i].temperatura1();
    }
  }

  // HUMEDAD
  if (c == 2) {
    background(0);
    textFont(chico);
    fill(bl); 
    text("Teclas: a - q - d - f - g - h - w - e -r ", 700, 760);
    text("Base de Datos Humedad Anual, 2015", 30, 760);
    fill(ma);
    text("Color Magenta: Humedad Máxima", 700, 30);
    fill(am);
    text("Color Amarilla: Humedad Media", 700, 50);    
    fill(ve);
    text("Color Verde: Humedad Mínima ", 700, 70);
  }

  for (int i = 0; i < o.length; i++) {
    if (c == 2) {
      o[i].humedad1();
    }
  }

  // VIENTO
  if (c == 3) {
    background(0);
    textFont(chico);
    fill(bl);
    text("Teclas: a - q - d - f - g - h - w - e -r ", 700, 760);
    text("Base de Datos Viento Anual, 2015", 30, 760);
    text("Blanco: Máximo Viento", 700, 30);
    fill(am);
    text("Amarillos: Media Viento", 700, 50);
    fill(ma);
    text("Magenta: Viento ", 700, 70);
    fill(bl);
  }

  for (int i = 0; i < o.length; i++) {
    if (c == 3) {
      o[i].viento();
    }
  }
  // NEBLINA
  if (c == 4) {
    background(0);
    textFont(chico);
    fill(bl);
    text("Teclas: a - q - d - f - g - h - w - e -r ", 700, 760);
    text("Base de Datos Neblina Anual, 2015", 30, 760);
    fill(am);
    text("Color Amarillo: Neblina Media", 700, 30);
    fill(ve);
    text("Color Verde: Neblina Mínima", 700, 50);
    fill(na);
    text("Color Naraja: Neblina", 700, 70);
  }

  for (int i = 0; i < o.length; i++) {
    if (c == 4) {
      o[i].neblina1();
    }
  }
  // Visibilidad
  if (c == 5) {
    background(0);
    textFont(chico);
    fill(bl);
    text("Teclas: a - q - d - f - g - h - w - e -r ", 700, 760);
    text("Base de Datos Visibilidad Anual, 2015", 30, 760);
    fill(na);
    text("Color Naranja: Visibilidad Mínima", 700, 30);
    fill(bl);
    text("Color Blanco: Visibilidad Media", 700, 50);
    fill(tu);
    text("Color Turquesa: Visibilidad Máxima", 700, 70);
  }

  for (int i = 0; i < o.length; i++) {
    if (c == 5) {
      o[i].visibilidad1();
    }
  }

  if (c == 6) {
    background(0);
    fill(bl);
    text("Blanco: Mínima", width/2 - 70, height/2 - 20);
    fill(tu);
    text("Turquesa: Media", width/2 - 70, height/2 );
    fill(na);
    text("Naranjo: Máxima ", width/2 - 70, height/2 + 20);
    fill(bl);
    text("Temperatura Anual", width/4 - 70, height/4 +180);
    text("Neblina Anual", width/4 + 400, height/4 +180);
    text("Visibiblidad Anual", width/4 - 70, height/4 + 220);
    text("Humedad Anual", width/1.4  - 70, height/1.4 - 150 );
    text("Base de Datos Temperatura - Neblina - Visibilidad - Humedad Anual, 2015", 30, 760);
    text("Teclas: a - q - d - f - g - h - w - e -r ", 700, 760);
    for (int i = 0; i < o.length; i++) {
      if (c == 6) {
        o[i].temperatura();
        o[i].humedad();
        o[i].visibilidad();
        o[i].neblina();
      }
    }
  }
  if (c == 7) {
    background(0);

    fill(na);
    text("Naranja: Neblina", 150, 30);
    fill(tu);
    text("Turquesa: Neblina Mínima", 150, 50);
    fill(ma);
    text("Magenta: Visibilidad Máxima", 600, 30);
    fill(bl);    
    text("Blanco: Visibilidad Mínima", 600, 50);
    text("Base de Datos Primer Semestre Neblina y Visibilidad, 2015", 30, 760);
    text("Teclas: a - q - d - f - g - h - w - e -r ", 700, 760);
    for (int i = 0; i < o.length; i++) {
      if ( c == 7) {
        if (i >= 2 && i <= 182) {
          o[i].semestre(i);
        }
      }
    }
  }

  if (c == 8) {

    background(0);
    fill(na);
    text("Naranja: Temperatura Máxima", 150, 30);
    fill(ve);
    text("Verde: Temperatura Mínima", 150, 50);
    fill(am);
    text("Amarillo: Humedad Máxima", 600, 30);
    fill(bl);    
    text("Blanco: Humedad Mínima", 600, 50);
    text("Base de Datos Segundo Semestre Temperatura y Humedad, 2015", 30, 760);
    text("Teclas: a - q - d - f - g - h - w - e -r ", 700, 760);
    for (int i = 0; i < o.length; i++) {
      if ( c == 8) {
        if (i >= 183 && i<= 366) {
          o[i].semestre2(i);
        }
      }
    }
  }
}

void keyPressed() {
  if (key == 's') {
    guardarTIFF = true;                    // Guarda el proceso
    saveFrame("s14c2gabriela.tiff");
  }   
  if ( key == 'q') {                       //Al apretar a tecla q cambia y te muestra la visualización anual de Temperatura 
    c = 0;
  }
  if (key == 'a') {                        //Al apretar a tecla a cambia y te muestra la visualización anual de Inicio (nombre, ramo, fecha)
    c = 1;
  }
  if ( key == 'd') {                       //Al apretar a tecla d cambia y te muestra la visualización anual de Humedad
    c = 2;
  }
  if ( key == 'f') {                      //Al apretar a tecla f cambia y te muestra la visualización anual de Viento
    c = 3;
  }
  if ( key == 'g') {                      //Al apretar a tecla g cambia y te muestra la visualización anual de Neblina
    c = 4;
  }
  if ( key == 'h') {                      //Al apretar a tecla h cambia y te muestra la visualización anual de Visibilidad
    c = 5;
  }
  if ( key == 'w') {                      //Al apretar a tecla w cambia y te muestra la cuatro visualizaciones anuales: Temperatura, Humedad, Neblina, Visibilidad
    c = 6;
  }
  if ( key == 'e') {                      //Al apretar a tecla e cambia y te muestra la cuatro visualizaciones semestral: Neblina y Visibilidad
    c = 7;
  }
  if ( key == 'r') {                      //Al apretar a tecla r cambia y te muestra la cuatro visualizaciones semestral: Temperatura y Humedad
    c = 8;
  }
}
