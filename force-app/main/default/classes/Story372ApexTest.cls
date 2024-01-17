@isTest
public class Story372ApexTest {
    
    @isTest
    public static void testSayHello() {
        String expected = 'Hello';
        String msg = 'Mismatched Greeting';
        String actual = Story372Apex.sayHello();
        System.assertEquals(expected,actual,msg);
    }

}