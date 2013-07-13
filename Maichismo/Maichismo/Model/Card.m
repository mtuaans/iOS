//
//  Card.m
//  Maichismo
//
//  Created by Tit on 2013/07/13.
//  Copyright (c) 2013年 Tit. All rights reserved.
//

#import "Card.h"

@implementation Card

- (int)match:(NSArray *)otherCards
{
    int score = 0;
    for (Card *card in otherCards){
        if ([card.contents isEqualToString:self.contents]) {
            score = 1;
        }
    }
    return score;
}

@end
