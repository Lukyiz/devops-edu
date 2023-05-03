@IsTest
private class AccountUpdateDescriptionTest {
    @IsTest
    static void testBehavior() {
        Account newAcc = new Account();
        newAcc.BillingCountry = 'Czech Republic';
        newAcc.socpl__Billing_Country__c = 'Czech Republic';
        newAcc.Name = 'SomeTestAcc';
        insert newAcc;
        
        Account accAfterInsert = [SELECT Id, Name FROM Account WHERE Id = :newAcc.Id];
        System.debug('LTEST accAfterInsert: ' + accAfterInsert);
        System.debug('LTEST accAfterInsert: ' + accAfterInsert.Name);
        String joinedName = 'SomeTestAcc_addedDesc';
        Assert.areEqual(joinedName, accAfterInsert.Name);
    }
}