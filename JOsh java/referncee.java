
import java.awt.Point;

public class referncee {
    public static void main(String[] args) {
        //In Primitive the value doesnt chnages 
        // byte x= 3;
        // byte y=x;
        // x=4;
        // System.ou t.println(y); 

        //In reference or non premitive
        Point point1 = new Point(1, 1);
        Point point2 = point1; 
        point1.x = 2;
        System.out.println(point2);
    }
}
