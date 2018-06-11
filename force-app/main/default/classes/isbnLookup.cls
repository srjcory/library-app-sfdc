public with sharing class isbnLookup {

	public static API_Key__mdt googleBooksAPI = [SELECT endpoint__c, key__c FROM API_Key__mdt WHERE QualifiedApiName = 'Google_Books'];

	public void get(String isbn){
		HttpRequest request = new HttpRequest();
		request.setEndPoint(googleBooksAPI.endpoint__c + '?q=isbn%' + isbn + '&key=' + googleBooksAPI.key__c);
		request.setMethod('GET');

	}

}
