//
//  SpaceDataViewController.h
//  Out of this World
//
//  Created by Victor Mendonça Lellis on 2/12/15.
//  Copyright (c) 2015 Victor Lellis. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SpaceObject.h"

@interface SpaceDataViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>

@property (strong, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic) SpaceObject *spaceObject;

@end
