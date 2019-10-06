class cubes {
  void display(int x,int y,float size) {
    float r = random(0,255);
    float g = random(0,255);
    float b = random(0,255);
    int o = int( random(0,2));
    //if (o>0){
    //stroke(r,g,b); 
    //}
    //if (o<1){
    //stroke(0);  
    //}
    fill(r,g,b);
    rect(x,y,size,size); 
    
    
    
  }
  
  
  
}
