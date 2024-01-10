import java.io.*; //Pure Java Library
//
//Library: use Sketch / Import Library / Minim
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
//Global Variables
String[] paths = {"path1", "path2", "path3",};
File musicFolder; //Class for java.io.* library
Minim minim; //creates object to access all functions
int numberOfSongs = 8; //Number of Files in Folder, OS to count
int numberOfSoundEffects = 4; //Number of Files in Folder, OS to count
AudioPlayer[] song = new AudioPlayer[ numberOfSongs ]; //creates "Play List" variable holding extensions WAV, AIFF, AU, SND, and MP3
AudioPlayer[] soundEffect = new AudioPlayer[ numberOfSoundEffects ]; //Playlist for Sound Effects
AudioMetaData[] songMetaData = new AudioMetaData[ numberOfSongs ]; //Stores everything from PlayList Properties TAB (.mp3)
//
void setup() {
  size(600, 400);
  //Display Algorithm
  minim = new Minim(this); //load from data directory, loadFile should also load from project folder, like loadImage
  String Ring = "Your_Phone_Ringing_-_Funny_Asian-650683.mp3";
  String extension = ".mp3";
  String pathway = "../"; //Relative Path
  String path1 = sketchPath( pathway + Ring ); //Absolute Path
  // See: https://poanchen.github.io/blog/2016/11/15/how-to-add-background-music-in-processing-3.0 
  String GTA = "Grand-Theft-Auto-San-Andreas-Theme-Song.mp3";
  String path2 = sketchPath( pathway + GTA ); //Absolute Pathprintln(path);
  String RickRoll = "Mzg1ODMxNTIzMzg1ODM3_JzthsfvUY24.MP3";
  String path3 = sketchPath( pathway + RickRoll ); //Absolute Pathprintln(path);
   song[0] = minim.loadFile( path1 );
   song[0] = minim.loadFile( path2 );
   song[0] = minim.loadFile( path3 );
  songMetaData[0] = song[0].getMetaData();
    //song[0].loop(0);
  //
  //Meta Data Println Testing
  //For Prototyping, print all information to the console first
  //Verifying Meta Data, 18 println's 
  //Repeat: println("?", songMetaData1.?() );
} //End setup
//
void draw() {
  //Note: Looping Function
  //Note: logical operators could be nested IFs
  if ( song[0].isLooping() && song[0].loopCount()!=-1 ) println("There are", song[0].loopCount(), "loops left.");
  if ( song[0].isLooping() && song[0].loopCount()==-1 ) println("Looping Infinitely");
  if ( song[0].isPlaying() && !song[0].isLooping() ) println("Play Once");
  //
  //Debugging Fast Forward and Fast Rewind
  //println( "Song Position", song1.position(), "Song Length", song1.length() );
  //
  // songMetaData1.title()
} //End draw
//
void keyPressed() {
 
} //End keyPressed
//
void mousePressed() {
} //End mousePressed
//
//End MAIN Program
