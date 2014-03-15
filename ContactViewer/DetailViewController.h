//
//  DetailViewController.h
//  ContactViewer
//
//  Created by Diorelle Ramos on 3/8/14.
//  Copyright (c) 2014 Diorelle Ramos. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Contact.h"


@interface DetailViewController : UIViewController <UISplitViewControllerDelegate>

@property (strong, nonatomic) Contact *detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@property (weak, nonatomic) IBOutlet UILabel *detailTitleLabel;
@property (weak, nonatomic) IBOutlet UILabel *detailNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *detailPhoneLabel;
@property (weak, nonatomic) IBOutlet UILabel *detailEmailLabel;
@property (weak, nonatomic) IBOutlet UILabel *detailTwitterLabel;

-(IBAction)call:(id)sender;
-(IBAction)launchSMS:(id)sender;
-(IBAction)launchEmail:(id)sender;
-(IBAction)unwindToDetailViewController:(UIStoryboardSegue *)unwindSegue;

@end
