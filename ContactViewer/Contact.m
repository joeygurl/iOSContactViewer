//
//  Contact.m
//  ContactViewer
//
//  Created by Diorelle Ramos on 3/8/14.
//  Copyright (c) 2014 Diorelle Ramos. All rights reserved.
//

#import "Contact.h"

@implementation Contact

@synthesize name, title, phone, email, twitter;

-(id)initWithName:(NSString *)newName andTitle:(NSString *)newTitle andPhone:(NSString *)newPhone andEmail:(NSString *)newEmail andTwitter:(NSString *)newTwitter {
    self = [super init];
    self.name = newName;
    self.title = newTitle;
    self.phone = newPhone;
    self.email = newEmail;
    self.twitter = newTwitter;
    return self;
};

@end
