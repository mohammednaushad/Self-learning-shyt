public class plndrome {
    public static void main(String[] args) 
    {
        int num=12321;
        int on=num;
        int rev=0;
        while(num>0)
        {
            int last=num%10;
            rev=rev*10+last;
            num=num/10;
        }   
        System.out.println( "rev num = "+rev);
        System.out.println("num = "+num);
        System.out.println("Original Num = "+on);

        if(rev==on)
        {
            System.out.println("It is a palindrome number");

        }
        else
        {
            System.out.println("It is not an palindrome number");
        }
    }

    
}
