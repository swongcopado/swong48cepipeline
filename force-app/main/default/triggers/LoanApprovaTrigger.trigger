trigger LoanApprovaTrigger on LoanObject__c (before insert, before update) {
    if (Trigger.isBefore) {
        if (Trigger.isInsert || Trigger.isUpdate) {
            LoanObjectUtility.setApprovalDate(Trigger.newMap.keySet());
        }
    }
}