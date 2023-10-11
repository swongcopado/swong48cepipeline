@isTest
public class ExpenseTriggerTest {
    @isTest
    static void testExpenseTrigger() {
        // Create a new Expense record
        Expense__c expense = new Expense__c();
        expense.Name = 'Test Expense';
        
        // Insert the Expense record
        Test.startTest();
        insert expense;
        Test.stopTest();
        
        // Retrieve the inserted Expense record
        expense = [SELECT Date__c, Description__c, Amount__c FROM Expense__c WHERE Id = :expense.Id];
        
        // Verify that the fields have been set correctly
        System.assertEquals(Date.today(), expense.Date__c);
        System.assertEquals('Default Description', expense.Description__c);
        System.assertEquals(100.00, expense.Amount__c);
    }
}