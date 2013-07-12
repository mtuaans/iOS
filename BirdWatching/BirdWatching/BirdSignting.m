//
//  BirdSignting.m
//  BirdWatching
//
//  Created by Tit on 2013/07/10.
//  Copyright (c) 2013年 Tit. All rights reserved.
//

#import "BirdSignting.h"

@implementation BirdSignting
-(id)initWithName:(NSString *)name location:(NSString *)location date:(NSDate *)date{
    self = [super init];
    if (self){
        _name = name;
        _location = location;
        _date = date;
        return self;
    }
    return nil;
}

@end
