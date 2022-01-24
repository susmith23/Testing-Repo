@isTest
public class AccountTriggerTest {
    
    @isTest
    public static void method1() {
        
        Account account = new Account();
        account.Name = 'Test Account';
        account.Industry = 'Banking';
        account.Active__c = 'Yes';
        account.Rating = 'Hot';
        
        insert account;
        
        account.Industry = 'Agriculture';
        account.Rating = 'Hot';
        update account;
        
    }

}