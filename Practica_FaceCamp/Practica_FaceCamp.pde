import gab.opencv.*;
import java.awt.Rectangle;
import processing.video.*;

Capture video;
OpenCV opencv;
Rectangle[] faces;

PImage imagen;

void setup(){
    size(1080, 720);
    
    video = new Capture(this, 1280, 720, "HD Webcam");
    video.start();

    opencv = new OpenCV(this, video);

    opencv.loadCascade(OpenCV.CASCADE_FRONTALFACE);
    
    imagen = loadImage("trum.png");
}

void draw(){
    if (video.available() == true) {
        video.read();
        opencv.loadImage(video);
        
        image(video, 0,0);
        
        noFill();
        stroke(0, 255, 0);
        strokeWeight(3);
        faces = opencv.detect();
        
        for (int i = 0; i < faces.length; i++) {
          //imagen = loadImage("trum.png");
          imagen.resize(faces[i].width+100,faces[i].height+90);
          image(imagen,faces[i].x-20,faces[i].y-20);
            //rect(faces[i].x, faces[i].y, faces[i].width, faces[i]. height);
        }
    }
}
