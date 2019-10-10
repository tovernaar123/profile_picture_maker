int x=0;
int b=0;
int f=0;
int x2=0;
int sizer =20;
float p = height/sizer;
float p2 = width/sizer;
String [] counter;
int jj; 
int chose2=0;
cubes[] thing;
void setup() {
  fullScreen();
  background(#003366 );
  noSmooth();
  p = height/sizer;
  p2 = width/sizer;
  counter = loadStrings("data/a.txt");
  thing = new cubes[int(height/2*width/2)+2];
  
}
void draw() {
 

   delay(100);
   
    thing[b] = new cubes();
    if(chose == 0 && chose2 ==0 ){
    chose2 =0;
    frameRate(1);
    for( int b1=0; b1-1 < p2; b1++){
    for ( int i=0; i-1 < p; i++){
    thing[b] = new cubes();
    thing[b].display(b, x+i*sizer, sizer);
    }
    b +=sizer;
    f += p2 *2;
  }
    } else {
    chose2 =1;
    frameRate(5);
    for ( int i=0; i-1 < p; i++){
    thing[b] = new cubes();
    thing[b].display(b, x+i*sizer, sizer);
    }
    

     b +=sizer;
     f++;
    }
    if( f-1> p2){
      chose2 =chose ;
      counter = append(counter,"1");
      saveStrings("data/a.txt",counter);
      jj =  counter.length;
      saveFrame("data/file-"+jj+" sizer = "+sizer+" .jpg");
      x2=0;
      x=0;
      b=0;
      f=0; 
      sizer =int(random(2,50));;
      p = height/sizer;
      p2 = width/sizer;
     
    }
}
