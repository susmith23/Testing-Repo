public  class LeadProcessor implements Database.Batchable <SObject> {
//START METHOD
    public  Database.QueryLocator start(Database.BatchableContext bc){
        String Query='Select id,LeadSource from Lead';
        return Database.getQueryLocator(Query);
            }
//EXECUTE METHOD
    public  void execute(Database.BatchableContext bc, List<Lead> scope){
        for(Lead l: scope){
            l.LeadSource='DreamForce';
            
        }
        update scope;

        System.debug('hey you,Hello');

        System.debug('hey you');

    }        
    
//FINISH METHOD
    public void finish(Database.BatchableContext bc) {
        Id job= bc.getJobId();
        System.debug('job');
        System.debug('this is job');
    }
}