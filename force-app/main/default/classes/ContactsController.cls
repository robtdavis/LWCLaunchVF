public without sharing class ContactsController {
    public List<Contact> listContacts {get;set;}

    public ContactsController() {
        listContacts = [SELECT Id, FirstName, LastName, AccountId, HomePhone,
                        Phone, MailingStreet, MailingCity, MailingState, MailingPostalCode 
                        FROM Contact
                        LIMIT 10];
        System.Debug(listContacts);
    }
}