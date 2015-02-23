//
//  SpaceImageViewController.h
//  Out of this World
//
//  Created by Victor Mendonça Lellis on 2/10/15.
//  Copyright (c) 2015 Victor Lellis. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SpaceObject.h"

@interface SpaceImageViewController : UIViewController <UIScrollViewDelegate>

@property (strong, nonatomic) IBOutlet UIScrollView *scrollView;
@property (strong, nonatomic) UIImageView *imageView;
@property (strong, nonatomic) SpaceObject *spaceObject;

@end
