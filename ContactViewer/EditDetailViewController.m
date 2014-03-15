//
//  EditDetailViewController.m
//  ContactViewer
//
//  Created by Diorelle Ramos on 3/11/14.
//  Copyright (c) 2014 Diorelle Ramos. All rights reserved.
//

#import "EditDetailViewController.h"

@interface EditDetailViewController ()

- (void)configureView;

@end

@implementation EditDetailViewController

- (void)setEditDetailItem:(Contact *)newEditDetailItem
{
    if (_editDetailItem != newEditDetailItem) {
        _editDetailItem = newEditDetailItem;
        
        // Update the view.
        [self configureView];
        
    }
}


- (void)configureView
{
    // Update the user interface for the detail item.
    
    if (self.editDetailItem) {
        self.editDetailTitleLabel.text = [self.editDetailItem title];
        self.editDetailNameTextField.text = self.editDetailItem.name;
        self.editDetailPhoneTextField.text = self.editDetailItem.phone;
        self.editDetailEmailTextField.text = self.editDetailItem.email;
        self.editDetailTwitterTextField.text = self.editDetailItem.twitter;
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	[self configureView];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)textFieldDidEndEditing:(id)sender {
    [sender resignFirstResponder];
}




@end
