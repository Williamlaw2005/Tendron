class Tendril
{
  public final static int SEG_LENGTH = 4; //length of each segment in the tendril
  private int myNumSegments, myX, myY;
  private double myAngle;
  
  /**
   Class constructor
   len is how many segments in this tendril (each a fixed length, 4 is a good start)
   theta is tendril starting angle in radians 
   x, y  is the starting (x,y) coordinate
   */
  public Tendril(int len, double theta, int x, int y)
  {
    myNumSegments = len;
    myAngle = theta;
    myX = x;
    myY = y;
  }
   public void show()
  {
       double startX = myX; double startY = myY;
 for(int i = 0; i < myNumSegments;i++){
       myAngle += (double)(Math.random()*0.4)-0.2;
       double endX = startX + Math.cos(myAngle)*SEG_LENGTH;
       double endY = startY + Math.sin(myAngle)*SEG_LENGTH;
 if(myNumSegments > 5){
   stroke(255);
 }
 else{
  stroke(0,255,255);
 }
 line((float)startX,(float)startY,(float)endX,(float)endY)
 startX = endX;
 startY = endY;
 if(i == myNumSegments-1){
    Cluster bh = new Cluster(myNumSegments/4,(int)endX,(int)endY);
    }
   }
  }
 }
