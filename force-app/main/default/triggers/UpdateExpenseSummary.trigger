trigger UpdateExpenseSummary on Expense__c (before insert) {
    for (Expense__c exp : Trigger.new) {
        if (exp.Expense_Summary__c == null || exp.Expense_Summary__c == '') {
            exp.Expense_Summary__c = 'a new expense';
        }
    }
}