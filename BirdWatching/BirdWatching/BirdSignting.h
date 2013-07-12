//
//  BirdSignting.h
//  BirdWatching
//
//  Created by Tit on 2013/07/10.
//  Copyright (c) 2013年 Tit. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BirdSignting : NSObject
@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *location;
@property (nonatomic, strong) NSDate *date;

-(id)initWithName:(NSString *)name location:(NSString*)location date:(NSDate *)date;

@end
