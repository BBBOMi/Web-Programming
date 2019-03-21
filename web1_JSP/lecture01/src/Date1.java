import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * Created by bomi on 2019-03-14.
 */
public class Date1 {
    public static void main(String[] args) {
        Date today = new Date();

        SimpleDateFormat f1 = new SimpleDateFormat("yyyy-MM-dd a hh:m:ss");
        String s1 = f1.format(today);
        System.out.println(s1);

        SimpleDateFormat f2 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String s2 = f2.format(today);
        System.out.println(s2);

        SimpleDateFormat f3 = new SimpleDateFormat("yy-MM-dd H:m:s");
        String s3 = f3.format(today);
        System.out.println(s3);
    }
}
