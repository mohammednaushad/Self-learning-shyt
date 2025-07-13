import java.util.Arrays;
public class arrays {
    public static void main(String[] args) {
        // tds Old way
        int[] numbers = new int[5];
        numbers[0] = 1;
        numbers[1] = 2;
        
        System.out.println(Arrays.toString(numbers));

        // new way
        int[] numbs = {2,3,5,1,4};
        System.out.println(numbs.length);
        Arrays.sort(numbs);
        System.out.println(Arrays.toString(numbs));
        


        
    }
}
