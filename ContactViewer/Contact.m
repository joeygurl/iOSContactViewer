//
//  Contact.m
//  ContactViewer
//
//  Created by Diorelle Ramos on 3/8/14.
//  Copyright (c) 2014 Diorelle Ramos. All rights reserved.
//

#import "Contact.h"

@implementation Contact

@synthesize name, title, phone, email, twitter, contactId;

-(id)initWithName:(NSString *)newName andTitle:(NSString *)newTitle andPhone:(NSString *)newPhone andEmail:(NSString *)newEmail andTwitter:(NSString *)newTwitter andContactId:(NSString *)newContactId {
    self = [super init];
    self.name = newName;
    self.title = newTitle;
    self.phone = newPhone;
    self.email = newEmail;
    self.twitter = newTwitter;
    self.contactId = newContactId;
    return self;
};

@end
