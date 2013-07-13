//
//  PlayingCard.m
//  Maichismo
//
//  Created by Tit on 2013/07/13.
//  Copyright (c) 2013年 Tit. All rights reserved.
//

#import "PlayingCard.h"

@implementation PlayingCard

-(NSString *)contents{
//    NSArray *rankStrings = [PlayingCard rankStrings];
    return [[PlayingCard rankStrings][self.rank] stringByAppendingString:self.suit];
}

@synthesize suit = _suit;


+ (NSArray *)validSuits{
    return @[@"♥",@"♦",@"♠",@"♣"];
}

+ (NSArray *)rankStrings{
    return @[@"?",@"A",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@"10",@"J",@"Q",@"K"];
}

+ (NSUInteger)maxRank {
    return [self rankStrings].count - 1;
}

- (NSString *)suit{
    return _suit ? _suit : @"?";
}

- (void)setSuit:(NSString *)suit{
    if ([[PlayingCard validSuits] containsObject:suit]) {
        _suit = suit;
    }
}

- (void)setRank:(NSUInteger)rank{
    if (rank <= [PlayingCard maxRank]) {
        _rank = rank;
    }
}

@end
