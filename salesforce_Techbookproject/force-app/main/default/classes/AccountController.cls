public class AccountController
{
    public Account account{get; set;}
    list<account> ch = [select id,name,site,accountnumber from account];
    
    public AccountController()
    {
        account = new Account();
        system.debug('acco'+account);
    }
    public void save()
    {
        upsert account;
        system.debug('upse'+account);
        
        string mb = apexpages.currentPage().getparameters().get('om');
        system.debug('mbvalue'+mb);
    }
    /* public void message()
{
string cm = apexpages.currentPage().getparameters().get('om');
system.debug('mz'+cm);
if(cm==null)
{
forerror=true;
}
}*/
}