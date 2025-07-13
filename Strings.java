public class Strings {
    public static void main(String[] args) {
        String message ="Hello World"+ "!!";
        
        System.out.println(message);

        System.out.println(message.endsWith("!!"));

        System.out.println(message.length());
        System.out.println(message.indexOf("e"));
        System.out.println(message.replace("!","*"));
        System.out.println(message.toLowerCase());
        System.out.println(message.trim());

        //Special characters
        String message2 = "Hello \"Naushad\"";
        System.out.println(message2);

        String message3 = "c:\\Windows\\...";
        System.out.println(message3);

        String message4 = "c:\nWindows\\...";
        System.out.println(message4);

        String message5 = "c:\tWindows\\...";
        System.out.println(message5);

        





    }
}
