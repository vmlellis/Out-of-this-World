//
//  AddSpaceObjectViewController.h
//  Out of this World
//
//  Created by Victor Mendonça Lellis on 2/20/15.
//  Copyright (c) 2015 Victor Lellis. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SpaceObject.h"

@protocol AddSpaceObjectViewControllerDelegate <NSObject>

@required

-(void)addSpaceObject:(SpaceObject *)spaceObject;
-(void)didCancel;

@end

@interface AddSpaceObjectViewController : UIViewController

@property (weak, nonatomic) id <AddSpaceObjectViewControllerDelegate> delegate;

@property (strong, nonatomic) IBOutlet UITextField *nameTextField;
@property (strong, nonatomic) IBOutlet UITextField *nicknameTextField;
@property (strong, nonatomic) IBOutlet UITextField *diameterTextField;
@property (strong, nonatomic) IBOutlet UITextField *temperatureTextField;
@property (strong, nonatomic) IBOutlet UITextField *numberOfMoonsTextField;
@property (strong, nonatomic) IBOutlet UITextField *interestingFactTextField;

- (IBAction)cancelButtonPressed:(UIButton *)sender;
- (IBAction)addButtonPressed:(UIButton *)sender;

@end
