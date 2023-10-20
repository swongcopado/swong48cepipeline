@isTest
public class LoanApprovalTriggerTest {
    @isTest
    static void testLoanApprovalTrigger() {
        // Create test data
        LoanObject__c loanApproval = new LoanObject__c();
        insert loanApproval;
        
        // Call the trigger manually
        Test.startTest();
        update loanApproval;
        Test.stopTest();
        
        // Verify the results
        loanApproval = [SELECT Id, Date__c FROM LoanObject__c WHERE Id = :loanApproval.Id];
        System.assertEquals(Date.today(), loanApproval.Date__c);
    }
}