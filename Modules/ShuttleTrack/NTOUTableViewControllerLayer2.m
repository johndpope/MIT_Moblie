//
//  NTOUTableViewControllerLayer2.m
//  MIT Mobile
//
//  Created by mac_hero on 12/9/26.
//
//

#import "NTOUTableViewControllerLayer2.h"
#import "UIKit+MITAdditions.h"



@interface NTOUTableViewControllerLayer2 ()

@end

@implementation NTOUTableViewControllerLayer2

- (id)initWithStyle:(UITableViewStyle)style {
    // Override initWithStyle: if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.
    self = [super initWithStyle:style];
    if (self) {
        self.title = @"Routes";
    }
    return self;
}

-(void) SetRoute:(int)RouteNumber
{
    self->WhatRoute = RouteNumber;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.tableView applyStandardColors];
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

#pragma mark - Table view data source

-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    return @"1";
}


- (UIView *) tableView: (UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
	NSString *headerTitle;
    switch (self->WhatRoute) {
        case 0:
            headerTitle = @"捷運忠孝復興站--海洋大學";
            break;
        case 1:
            headerTitle = @"海洋大學--捷運忠孝復興站";
            break;
        case 2:
            headerTitle = @"捷運劍潭站--海洋大學";
            break;
        case 3:
            headerTitle = @"海洋大學--捷運劍潭站";
            break;
        default:
            break;
    }
	return [UITableView groupedSectionHeaderWithTitle:headerTitle];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    switch (self->WhatRoute) {
        case 0:
            return 8;
            break;
        case 1:
            return 4;
            break;
        case 2:
            return 6;
            break;
        case 3:
            return 4;
            break;
        default:
            return 0;
            break;
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *CellIdentifier = [NSString stringWithFormat:@"Cell%d%d",indexPath.section,indexPath.row];
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil)
    {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:CellIdentifier] autorelease];
    }
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    switch (self->WhatRoute) {
        case 0:
            switch (indexPath.row) {
                case 0:
                    cell.textLabel.text = @"站牌";
                    cell.textLabel.textColor = [UIColor blueColor];
                    cell.detailTextLabel.text = @"第一班     第二班   ";
                    cell.detailTextLabel.textColor = [UIColor blueColor];
                    cell.accessoryType = UITableViewCellAccessoryNone;
                    break;
                case 1:
                    cell.textLabel.text = @"松山車站";
                    cell.detailTextLabel.text = @"06:30      08:25";
                    break;
                case 2:
                    cell.textLabel.text = @"饒河街口";
                    cell.detailTextLabel.text = @"06:30      08:25";
                    break;
                case 3:
                    cell.textLabel.text = @"京華城";
                    cell.detailTextLabel.text = @"06:35      08:30";
                    break;
                case 4:
                    cell.textLabel.text = @"監理處";
                    cell.detailTextLabel.text = @"06:35      08:30";
                    break;
                case 5:
                    cell.textLabel.text = @"美仁里";
                    cell.detailTextLabel.text = @"06:40      08:35";
                    break;
                case 6:
                    cell.textLabel.text = @"臺安醫院";
                    cell.detailTextLabel.text = @"06:45      08:40";
                    break;
                case 7:
                    cell.textLabel.text = @"捷運忠孝復興站";
                    cell.detailTextLabel.text = @"07:00      09:00";
                    break;
                    
                default:
                    break;
            }
            break;
        case 1:
            switch (indexPath.row) {
                case 0:
                    cell.textLabel.text = @"站牌";
                    cell.textLabel.textColor = [UIColor blueColor];
                    cell.detailTextLabel.text = @"第一班     第二班   ";
                    cell.detailTextLabel.textColor = [UIColor blueColor];
                    cell.accessoryType = UITableViewCellAccessoryNone;
                    break;
                case 1:
                    cell.textLabel.text = @"工學院";
                    cell.detailTextLabel.text = @"15:20      17:15";
                    break;
                case 2:
                    cell.textLabel.text = @"祥豐校區站";
                    cell.detailTextLabel.text = @"15:20      17:15";
                    break;
                case 3:
                    cell.textLabel.text = @"人社院站";
                    cell.detailTextLabel.text = @"15:20      17:15";
                    break;
                default:
                    break;
            }
        case 2:
            switch (indexPath.row) {
                case 0:
                    cell.textLabel.text = @"站牌";
                    cell.textLabel.textColor = [UIColor blueColor];
                    cell.detailTextLabel.text = @"第一班     第二班   ";
                    cell.detailTextLabel.textColor = [UIColor blueColor];
                    cell.accessoryType = UITableViewCellAccessoryNone;
                    break;
                case 1:
                    cell.textLabel.text = @"啟聰學校";
                    cell.detailTextLabel.text = @"06:40      08:45";
                    break;
                case 2:
                    cell.textLabel.text = @"酒泉街";
                    cell.detailTextLabel.text = @"06:40      08:45";
                    break;
                case 3:
                    cell.textLabel.text = @"市立美術館";
                    cell.detailTextLabel.text = @"06:45      08:50";
                    break;
                case 4:
                    cell.textLabel.text = @"捷運劍潭站";
                    cell.detailTextLabel.text = @"07:00      09:00";
                    break;
                case 5:
                    cell.textLabel.text = @"士林行政中心";
                    cell.detailTextLabel.text = @"07:00      09:00";
                    break;
                default:
                    break;
            }
        case 3:
            switch (indexPath.row) {
                case 0:
                    cell.textLabel.text = @"站牌";
                    cell.textLabel.textColor = [UIColor blueColor];
                    cell.detailTextLabel.text = @"第一班     第二班   ";
                    cell.detailTextLabel.textColor = [UIColor blueColor];
                    cell.accessoryType = UITableViewCellAccessoryNone;
                    break;
                case 1:
                    cell.textLabel.text = @"工學院";
                    cell.detailTextLabel.text = @"15:20      17:15";
                    break;
                case 2:
                    cell.textLabel.text = @"祥豐校區站";
                    cell.detailTextLabel.text = @"15:20      17:15";
                    break;
                case 3:
                    cell.textLabel.text = @"人社院站";
                    cell.detailTextLabel.text = @"15:20      17:15";
                    break;
                default:
                    break;
            }
        default:
            break;
    }
    // Configure the cell...
    
    return cell;
}

/*
 // Override to support conditional editing of the table view.
 - (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
 {
 // Return NO if you do not want the specified item to be editable.
 return YES;
 }
 */

/*
 // Override to support editing the table view.
 - (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
 {
 if (editingStyle == UITableViewCellEditingStyleDelete) {
 // Delete the row from the data source
 [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
 }
 else if (editingStyle == UITableViewCellEditingStyleInsert) {
 // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
 }
 }
 */

/*
 // Override to support rearranging the table view.
 - (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
 {
 }
 */

/*
 // Override to support conditional rearranging of the table view.
 - (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
 {
 // Return NO if you do not want the item to be re-orderable.
 return YES;
 }
 */

#pragma mark - Table view delegate

- (NSIndexPath *)tableView:(UITableView *)tableView willSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (!indexPath.row) {
        return nil;
    }
    return indexPath;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row) {
        NTOUTableViewControllerLayer3* Layer3 = [[NTOUTableViewControllerLayer3 alloc] initWithStyle:UITableViewStyleGrouped];
        Layer3.Routes = indexPath;
        [self.navigationController pushViewController:Layer3 animated:YES];
        [Layer3 release];
    }
}

@end
