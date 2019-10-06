int x=0;
int b=0;
int f=0;
int sizer =15;
float p = height/sizer;
float p2 = width/sizer;
String [] counter;
int jj; 
cubes[] thing = new cubes[20000000];
void setup() {
  fullScreen();
  background(#003366 );
  noSmooth();
  p = height/sizer;
  p2 = width/sizer;
  counter = loadStrings("data/a.txt");
}
void draw() {



   delay(100);
    thing[b] = new cubes(); //<>//
    for ( int i=0; i-1 < p; i++){
    thing[b] = new cubes();
    thing[b].display(b, x+i*sizer, sizer); //<>//
    
  }
     
 //<>//
    b +=sizer; //<>//
    f++;
    if( f-1> p2){
    counter = append(counter,"1");
    saveStrings("data/a.txt",counter);
    jj =  counter.length;
    saveFrame("data/file-"+jj+" sizer = "+sizer+" .jpg");
    
      x=0;
      b=0;
      f=0; 
      sizer =int(random(1,50));;
       p = height/sizer;
       p2 = width/sizer;
    }
}
