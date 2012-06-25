//
//  Tab03_Setting_ViewController.m
//  BetweenTheBars
//
//  Created by Byungyun Lee on 12. 6. 21..
//  Copyright (c) 2012년 __MyCompanyName__. All rights reserved.
//
#import "Tab03_Setting_ViewController.h"


@interface Tab03_Setting_ViewController ()
@end


@implementation Tab03_Setting_ViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
		self.title = NSLocalizedString(@"설정", @"Setting");
		self.tabBarItem.image = [UIImage imageNamed:@"bgr_tab_icon_03"];
    }
    return self;
} 
- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
}
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
