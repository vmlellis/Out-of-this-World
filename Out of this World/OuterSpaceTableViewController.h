//
//  OuterSpaceTableViewController.h
//  Out of this World
//
//  Created by Victor Lellis on 19/01/15.
//  Copyright (c) 2015 Victor Lellis. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AddSpaceObjectViewController.h"

@interface OuterSpaceTableViewController : UITableViewController <AddSpaceObjectViewControllerDelegate>

@property (strong, nonatomic) NSMutableArray *planets;
@property (strong, nonatomic) NSMutableArray *addedSpaceObjects;

@end