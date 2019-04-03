package tryWithResource;

/**
 * Created by bomi on 2019-04-03.
 */
public class Example {
    public static void main(String[] args) throws Exception {
        try(MyResource resource = new MyResource()) {
            resource.work();
        }
    }
}
