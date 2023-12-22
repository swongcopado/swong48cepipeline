@isTest
public class Story359ApexTest {
    
    @isTest
    static void testAddNumbers() {
        // Arrange
        Integer num1 = 5;
        Integer num2 = 7;
        Integer expectedSum = 12;
        
        // Act
        Integer actualSum = Story359Apex.addNumbers(num1, num2);
        
        // Assert
        System.assertEquals(expectedSum, actualSum, 'The addNumbers method did not return the expected result.');
    }
}