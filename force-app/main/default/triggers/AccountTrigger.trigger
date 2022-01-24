trigger AccountTrigger on Account (before update) {
    
    
    for(Account acc: trigger.new) {
        if(acc.Industry == 'Agriculture')
        {
            acc.Active__c = 'Yes';
            
        }
        
       
    }
        

}