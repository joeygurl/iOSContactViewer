//
//  DetailViewController.m
//  ContactViewer
//
//  Created by Diorelle Ramos on 3/8/14.
//  Copyright (c) 2014 Diorelle Ramos. All rights reserved.
//

#import "DetailViewController.h"
#import "EditDetailViewController.h"

@interface DetailViewController ()

- (void)configureView;

@end

@implementation DetailViewController


- (void)setDetailItem:(Contact*)newDetailItem
{
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
        
        // Update the view.
        [self configureView];
    
    }
}

- (void)configureView
{
    // Update the user interface for the detail item.

    if (self.detailItem) {
        self.detailTitleLabel.text = [self.detailItem title];
        self.detailNameLabel.text = self.detailItem.name;
        self.detailPhoneLabel.text = self.detailItem.phone;
        self.detailEmailLabel.text = self.detailItem.email;
        self.detailTwitterLabel.text = self.detailItem.twitter;
    }
}

- (void)viewDidLoad
{
   [super viewDidLoad];
   // Do any additional setup after loading the view, typically from a nib.
    [self configureView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)call:(id)sender
{
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:[NSString stringWithFormat:@"tel:%@", self.detailItem.phone]]];
}

- (void)launchSMS:(id)sender
{
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:[NSString stringWithFormat:@"sms:%@", self.detailItem.phone]]];
}

- (void)launchEmail:(id)sender
{
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:[NSString stringWithFormat:@"mailto:%@", self.detailItem.email]]];
}


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    [[segue destinationViewController] setEditDetailItem:self.detailItem];
}

- (IBAction)unwindToDetailViewController:(UIStoryboardSegue *)unwindSegue
{
}
@end
