//
//  EditDetailViewController.h
//  ContactViewer
//
//  Created by Diorelle Ramos on 3/11/14.
//  Copyright (c) 2014 Diorelle Ramos. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Contact.h"

@interface EditDetailViewController : UIViewController <UISplitViewControllerDelegate>

@property (strong, nonatomic) Contact *editDetailItem;

@property (weak, nonatomic) IBOutlet UILabel *editDetailTitleLabel;
@property (weak, nonatomic) IBOutlet UITextField *editDetailNameTextField;
@property (weak, nonatomic) IBOutlet UITextField *editDetailPhoneTextField;
@property (weak, nonatomic) IBOutlet UITextField *editDetailEmailTextField;
@property (weak, nonatomic) IBOutlet UITextField *editDetailTwitterTextField;

- (IBAction)textFieldDidEndEditing:(id)sender;


@end
