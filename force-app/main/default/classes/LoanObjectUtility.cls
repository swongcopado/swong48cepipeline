public class LoanObjectUtility {
    public static void setApprovalDate(Set<Id> loanApprovalIds) {
        if (loanApprovalIds.isEmpty()) {
            return;
        }
        Id firstLoanApprovalId = loanApprovalIds.iterator().next();
        LoanObject__c loanApproval = [SELECT Id, Date__c FROM LoanObject__c WHERE Id = :firstLoanApprovalId];
        loanApproval.Date__c = Date.today();
        update loanApproval;
    }
}