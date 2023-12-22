@isTest
public with sharing class Story358ApexTest {

    @isTest
    public static void testGreeting() {

        String expected = 'Story 358 - updated';
        String actual = Story358Apex.greeting();
        System.assertEquals(expected,actual,'mismatched greetign');
    }

}