// PROGRAMMING POSTERS 
// framework
// do not change this file!

// Farbdefinitionen
color white = #f1f1f1;
color red = #FF0000;

// VideoExport-Library importieren
import com.hamoid.*;
VideoExport videoExport;

// Ani-Library importieren
import de.looksgood.ani.*;
AniSequence seq;

// Schrift für das Branding laden
PFont robotoRegular;

void settings() {
  
  // Größe und Rendermodus des Posters festlegen
  size(586, 810, P2D);
  
  // Auflösung verdoppeln
  pixelDensity(2);
}

void posterSetup() {

  // Schärfere Schriftkonturen
  textMode(SHAPE);

  // Schrift initialisieren
  robotoRegular = createFont("Roboto-Regular.ttf", 400);

  // Schrift definieren
  textFont(robotoRegular, 400);

  // Typo zentrieren
  textAlign(CENTER, TOP);

  // Definition des Namens der Videodatei
  videoExport = new VideoExport(this, "video.mp4");

  // Definition der Videoframerate
  videoExport.setFrameRate(30);  

  // Videoaufnahme starten
  videoExport.startMovie();  

  // Ani-Bibliothek initialisieren
  Ani.init(this);

  // Neue Sequenz starten
  seq = new AniSequence(this);
}


void branding() {
  textFont(robotoRegular, 11);
  textAlign(LEFT, TOP);
  pushMatrix();
  translate(15, 770);
  text(Vorname, 0, 0);
  text(Nachname, 0, 12);
  popMatrix();
  pushMatrix();
  translate(150, 770);
  text("Programming", 0, 0);
  text("Posters", 0, 12);
  popMatrix();
  textAlign(RIGHT, TOP);
  pushMatrix();
  translate(width-15, 770);
  text("2019", 0, 12);
  popMatrix();
}
