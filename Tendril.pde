class Tendril
{
  public final static int SEG_LENGTH = 8; //length of each segment in the tendril
  public int myNumSegments, myX, myY;
  public double startX, startY, endX, endY;
  public double myAngle;
  
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
       startX = myX; startY = myY;
 
 for(int i = 0; i < myNumSegments;i++){
       myAngle += (double)(Math.random()*0.4)-0.2;
       endX = startX + Math.cos(myAngle)*SEG_LENGTH;
       endY = startY + Math.sin(myAngle)*SEG_LENGTH;
       line((float)startX,(float)startY,(float)endX,(float)endY);
       startX = endX;
       startY = endY;
  if(myNumSegments > 10)
   stroke(255);
   else
   stroke(0,255,255);
   
  if(myNumSegments >= 3){
     Cluster bh = new Cluster(myNumSegments/8,(int)endX,(int)endY); 
      }
    }
  }
}
