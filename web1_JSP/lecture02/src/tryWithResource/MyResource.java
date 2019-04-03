package tryWithResource;

/**
 * Created by bomi on 2019-04-03.
 */
class MyResource implements AutoCloseable {
    public MyResource() {
        System.out.println("자원이 할당됨");
    }

    public void work() throws Exception {
        System.out.println("작업 중 에러 발생");
        throw new Exception();
    }
     @Override
    public void close() throws Exception {
         System.out.println("자원이 반남됨");
    }
}
