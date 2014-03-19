//
//  ContactStore.h
//  ContactViewer
//
//  Created by Diorelle Ramos on 3/8/14.
//  Copyright (c) 2014 Diorelle Ramos. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Contact.h"

@interface ContactStore : NSObject

-(int)count;

-(Contact *) getContactAtIndex:(int)index;
-(NSMutableArray *) getContacts;
-(id)initWithDummies;

@end
