//
//  ContactStore.m
//  ContactViewer
//
//  Created by Diorelle Ramos on 3/8/14.
//  Copyright (c) 2014 Diorelle Ramos. All rights reserved.
//

#import "ContactStore.h"

@interface ContactStore() {
    NSMutableArray *_contacts;
}
@end

@implementation ContactStore
NSString *apiKey = @"appydays";

-(int)count {
    return _contacts.count;
}

-(Contact *)getContactAtIndex:(int)index {
    return [_contacts objectAtIndex:index];
}

-(NSMutableArray *)getContacts{
    
    //init rest api url string
    NSURL *url = [NSURL URLWithString:[NSString stringWithFormat:@"http://contacts.tinyapollo.com/contacts?key=%@",apiKey]];
    
    //init request
    NSMutableURLRequest *request = [[NSMutableURLRequest alloc] init];
    [request setURL:url];
    [request setHTTPMethod:@"GET"];
    
    //init response
    NSHTTPURLResponse *response = nil;
    NSError *error = [[NSError alloc] init];
    NSData *responseData = [NSURLConnection sendSynchronousRequest:request returningResponse:&response error:&error];
    
    NSDictionary *responseDict = [NSJSONSerialization JSONObjectWithData:responseData options:0 error:&error];
    NSArray *contacts = [responseDict objectForKey:@("contacts")];
    
    
    for(NSDictionary *contact in contacts){
        NSString *contactId = [contact objectForKey:@"_id"];
        NSString *title = [contact objectForKey:@"title"];
        NSString *name = [contact objectForKey:@"name"];
        NSString *phone = [contact objectForKey:@"phone"];
        NSString *email = [contact objectForKey:@"email"];
        NSString *twitter = [contact objectForKey:@"twitterId"];
        
        [_contacts addObject:[[Contact alloc] initWithName:name andTitle:title andPhone:phone andEmail:email andTwitter:twitter andContactId:contactId]];
    }
    return _contacts;
}

-(id)initWithDummies {
    self = [super init];
    
    _contacts = [[NSMutableArray alloc] init];
//    [_contacts addObject:[[Contact alloc] initWithName:@"Ronda Rousey" andTitle:@"Ms" andPhone:@"123" andEmail:@"ronda@email.com"andTwitter:@"@rowdy"]];
//    
//     [_contacts addObject:[[Contact alloc] initWithName:@"Lyoto Machida" andTitle:@"Mr" andPhone:@"543" andEmail:@"lyoto@email.com" andTwitter:@"@thedragon"]];
    return self;
    
}

-(void) add:(Contact *)contact{
    
}

-(void) update:(Contact *)contact{
    
}

-(void) remove:(NSString *)contactId{
    
}


@end
