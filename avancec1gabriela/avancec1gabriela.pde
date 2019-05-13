// Universidad del Desarrollo - Facultad de Diseño - Diseño de Interacción Digital
// Programación Creativa- 2019
// Gabriela Navarro Risopatrón

//Declacración de la Clase
Objeto [] o;

//Declaración de variables
Table tabla;
PFont grande, chico;

void setup() {
  size(1000, 1000);

  tabla = loadTable("basedatos.csv", "header");
  o = new Objeto[tabla.getRowCount()]; 


  for (int i = 0; i < tabla.getRowCount(); i++) {
    TableRow row = tabla.getRow(i);
    String fecha = row.getString("PET");
    int maxT = row.getInt("MaxT");
    int mediaT = row.getInt("MeanT");
    int minT = row.getInt("MinT");
    int humax= row.getInt("MaxHum");
    int humedia = row.getInt("MeanHum");
    int humin = row.getInt("MinHum");
    int wind = row.getInt("Wind");

    o[i] = new Objeto(fecha, maxT, mediaT, minT, humax, humedia, humin, wind);

    //Tipografía
    grande= createFont("HelveticaNeue-Bold", 20);
    chico = createFont("HelveticaNeue-Light ", 15);
  }
}

void draw() {
  for (int i = 0; i < o.length; i ++) {
    o[i].display();
    o[i].temperatura();
    o[i].humedad();
    o[i].viento();
  }
}
