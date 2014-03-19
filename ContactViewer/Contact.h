//
//  Contact.h
//  ContactViewer
//
//  Created by Diorelle Ramos on 3/8/14.
//  Copyright (c) 2014 Diorelle Ramos. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Contact : NSObject


@property NSString *contactId;
@property NSString *name;
@property NSString *title;
@property NSString *phone;
@property NSString *email;
@property NSString *twitter;

-(id)initWithName:(NSString *)newName andTitle:(NSString *)newTitle andPhone:(NSString *)newPhone andEmail:(NSString *)newEmail andTwitter:(NSString *)newTwitter andContactId:(NSString *)newContactId;

@end
