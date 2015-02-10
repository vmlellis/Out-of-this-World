//
//  SpaceObject.m
//  Out of this World
//
//  Created by Victor Mendonça Lellis on 2/6/15.
//  Copyright (c) 2015 Victor Lellis. All rights reserved.
//

#import "SpaceObject.h"
#import "AstronomicalData.h"

@implementation SpaceObject

-(id)init {
    self = [self initWithData:nil andImage:nil];
    return self;
}

-(id)initWithData:(NSDictionary *)data andImage:(UIImage *)image {
    self = [super init];
    
    self.name = data[PLANET_NAME];
    self.gravitationalForce = [data[PLANET_GRAVITY] floatValue];
    self.diameter = [data[PLANET_DIAMETER] floatValue];
    self.yearLength = [data[PLANET_DAY_LENGTH] floatValue];
    self.dayLength = [data[PLANET_DAY_LENGTH] floatValue];
    self.temperature = [data[PLANET_TEMPERATURE] floatValue];
    self.numberOfMoons = [data[PLANET_NUMBER_OF_MOONS] intValue];
    self.nickname = data[PLANET_NICKNAME];
    self.interestFact = data[PLANET_INTERESTING_FACT];
    self.spaceImage = image;
    
    return self;
}

@end
