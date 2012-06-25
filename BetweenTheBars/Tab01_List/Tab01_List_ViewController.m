//
//  FirstViewController.m
//  BetweenTheBars
//
//  Created by Byungyun Lee on 12. 6. 21..
//  Copyright (c) 2012년 Wunderface. All rights reserved.
//
#import "Tab01_List_ViewController.h"


#define	kNormalCellHeight	(40.0f)
#define	kSelectedCellHeight	(120.0f)


@interface Tab01_List_ViewController ()
@end


@implementation Tab01_List_ViewController


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self)
	{
		self.title = NSLocalizedString(@"리스트", @"List of Bar");
		self.tabBarItem.image = [UIImage imageNamed:@"bgr_tab_icon_01"];
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
- (void)viewWillAppear:(BOOL)animated
{
	arr_bar_list = [[NSMutableArray alloc] initWithCapacity:64];
	for(int idx = 0; idx < 64; idx++)
	{
		NSString*	strTitle = [NSString stringWithFormat:@"[BAR] %3d Index", idx + 1];
		[arr_bar_list addObject:strTitle];
	}
	
	selectedCellIndex = -1;
	
	[tbl_BarList setTableHeaderView:vw_TableHeader];
}
- (void)viewWillDisappear:(BOOL)animated
{
	[arr_bar_list release];
}
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
	return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}
- (void)dealloc
{
	[vw_TableHeader release];
	[tbl_BarList	release];
	[btn_Tag		release];
	[vw_LocationSetup	release];
	
	[super dealloc];
}

#pragma mark - UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
	return [arr_bar_list	count];
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
	static	NSString*	const kCellID = @"LIST_CELL_ID";
	
	UITableViewCell*	cell	= [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:kCellID];

	cell.textLabel.text = [arr_bar_list objectAtIndex:indexPath.row];
	
	return cell;
}


#pragma mark - UITableViewDelegate
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
	if(indexPath.row == selectedCellIndex)
	{
		return kSelectedCellHeight;
	}
	
	return kNormalCellHeight;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
	selectedCellIndex = indexPath.row;
	
	NSIndexPath* rowToReload = [NSIndexPath indexPathForRow:indexPath.row inSection:0];
	NSArray*	rowsToReload = [NSArray arrayWithObjects:rowToReload, nil];
	
	[tableView	reloadRowsAtIndexPaths:rowsToReload withRowAnimation:UITableViewRowAnimationFade];
}


#pragma mark - UIButton Tap Delegate
- (IBAction)tap_btn_tag:(id)sender
{
	[UIView animateWithDuration:0.25f animations:^(void) {	
		[btn_Tag			setFrame:CGRectMake(btn_Tag.frame.origin.x,
												btn_Tag.frame.origin.y - btn_Tag.frame.size.height,
												btn_Tag.frame.size.width,
												btn_Tag.frame.size.height)];
		[vw_LocationSetup	setAlpha:1.0f];
	}];
}
- (IBAction)tap_btn_set_location_done:(id)sender
{
	[UIView animateWithDuration:0.25f animations:^(void) {
		[btn_Tag			setFrame:CGRectMake(btn_Tag.frame.origin.x,
												btn_Tag.frame.origin.y + btn_Tag.frame.size.height,
												btn_Tag.frame.size.width,
												btn_Tag.frame.size.height)];
		[vw_LocationSetup setAlpha:0.0f];
	}];
}


@end
