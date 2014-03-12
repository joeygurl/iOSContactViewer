//
//  ContactStore.m
//  ContactViewer
//
//  Created by Diorelle Ramos on 3/8/14.
//  Copyright (c) 2014 Diorelle Ramos. All rights reserved.
//

#import "ContactStore.h"

@interface ContactStore() {
    NSArray *_contacts;
}
@end

@implementation ContactStore

-(int)count {
    return _contacts.count;
}

-(Contact *)getContactAtIndex:(int)index {
    return [_contacts objectAtIndex:index];
}

-(id)initWithDummies {
    self = [super init];
    _contacts =  @[
                   [[Contact alloc] initWithName:@"Ronda Rousey" andTitle:@"Ms" andPhone:@"123" andEmail:@"ronda@email.com" andTwitter:@"@rowdy"],
                   [[Contact alloc] initWithName:@"Lyoto Machida" andTitle:@"Mr" andPhone:@"543" andEmail:@"lyoto@email.com" andTwitter:@"@thedragon"]
    ];
    return self;
    
}

@end
