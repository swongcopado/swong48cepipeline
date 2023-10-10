@isTest
public class UpdateExpenseSummaryTest {
    @isTest static void testUpdateExpenseSummary() {
        // Arrange
        Expense__c testExpense = new Expense__c();
        
        // Act
        Test.startTest();
        insert testExpense;
        Test.stopTest();
        
        // Assert
        testExpense = [SELECT Expense_Summary__c FROM Expense__c WHERE Id = :testExpense.Id];
        System.assertEquals('a new expense', testExpense.Expense_Summary__c);
    }
}