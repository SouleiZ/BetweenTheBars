//
//  SecondViewController.m
//  BetweenTheBars
//
//  Created by Byungyun Lee on 12. 6. 21..
//  Copyright (c) 2012년 Wunderface. All rights reserved.
//
#import "Tab02_Map_ViewController.h"


#import <MapKit/MapKit.h>
#import <CoreLocation/CoreLocation.h>


@interface Tab02_Map_ViewController ()
@end


@implementation Tab02_Map_ViewController


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
		self.title = NSLocalizedString(@"지도", @"Map of Bar");
		self.tabBarItem.image = [UIImage imageNamed:@"bgr_tab_icon_02"];
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
	return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
