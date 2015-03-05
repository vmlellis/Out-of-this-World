//
//  AddSpaceObjectViewController.m
//  Out of this World
//
//  Created by Victor Mendonça Lellis on 2/20/15.
//  Copyright (c) 2015 Victor Lellis. All rights reserved.
//

#import "AddSpaceObjectViewController.h"

@interface AddSpaceObjectViewController ()

@end

@implementation AddSpaceObjectViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIImage *orionImage = [UIImage imageNamed:@"Orion.jpg"];
    self.view.backgroundColor = [UIColor colorWithPatternImage:orionImage];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)cancelButtonPressed:(UIButton *)sender {
    [self.delegate didCancel];
}

- (IBAction)addButtonPressed:(UIButton *)sender {
    SpaceObject *newSpaceObject = [self returnNewSpaceObject];
    [self.delegate addSpaceObject:newSpaceObject];
}

-(SpaceObject *)returnNewSpaceObject {
    SpaceObject *addedSpaceObject = [[SpaceObject alloc] init];
    addedSpaceObject.name = self.nameTextField.text;
    addedSpaceObject.nickname = self.nicknameTextField.text;
    addedSpaceObject.diameter = [self.diameterTextField.text floatValue];
    addedSpaceObject.temperature = [self.temperatureTextField.text floatValue];
    addedSpaceObject.numberOfMoons = [self.numberOfMoonsTextField.text intValue];
    addedSpaceObject.interestFact = self.interestingFactTextField.text;
    addedSpaceObject.spaceImage = [UIImage imageNamed:@"EinsteinRing.jpg"];
    
    return addedSpaceObject;
}

@end
