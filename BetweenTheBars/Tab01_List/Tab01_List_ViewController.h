//
//  FirstViewController.h
//  BetweenTheBars
//
//  Created by Byungyun Lee on 12. 6. 21..
//  Copyright (c) 2012년 Wunderface. All rights reserved.
//
#import <UIKit/UIKit.h>


@interface Tab01_List_ViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>
{
	NSMutableArray*	arr_bar_list;
	NSInteger		selectedCellIndex;
	
	IBOutlet		UIView*			vw_TableHeader;
	IBOutlet		UITableView*	tbl_BarList;
	IBOutlet		UIButton*		btn_Tag;
	IBOutlet		UIView*			vw_LocationSetup;
}

- (IBAction)tap_btn_tag:(id)sender;
- (IBAction)tap_btn_set_location_done:(id)sender;


@end