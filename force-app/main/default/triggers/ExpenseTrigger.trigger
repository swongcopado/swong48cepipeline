trigger ExpenseTrigger on Expense__c (before insert) {
    for (Expense__c expense : Trigger.new) {
        expense.Date__c = Date.today();
        expense.Description__c = 'Default Description';
        expense.Amount__c = 100.00;
    }
}