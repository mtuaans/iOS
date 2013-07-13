//
//  Deck.h
//  Maichismo
//
//  Created by Tit on 2013/07/13.
//  Copyright (c) 2013年 Tit. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"
@interface Deck : NSObject

- (void)addCard:(Card *)card atTop:(BOOL)atTop;
- (Card *)drawRandomCard;

@end
