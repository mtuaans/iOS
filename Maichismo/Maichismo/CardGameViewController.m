//
//  CardGameViewController.m
//  Maichismo
//
//  Created by Tit on 2013/07/13.
//  Copyright (c) 2013年 Tit. All rights reserved.
//

#import "CardGameViewController.h"


@interface CardGameViewController ()
@property (weak, nonatomic) IBOutlet UILabel *flipLabel;
@property (nonatomic) int flipCount;
@property (nonatomic) PlayingCardDeck *deck;
@property (nonatomic) BOOL initialized;

@end

@implementation CardGameViewController

//- (void)setFlipCount:(int)flipCount
//{
//    _flipCount = flipCount;
//    self.flipLabel.text = [NSString stringWithFormat:@"Flips: %d",self.flipCount];
////    self.flipLabel = [NSString self.flipCount];
//}
//- (IBAction)flipCard:(UIButton *)sender
//{
//    if (sender.isSelected) {
//        sender.selected = NO;
//    }else{
//        sender.selected = YES;
//    }
//    self.flipCount++;
//}


- (void)setFlipCount:(int)flipCount
{
    _flipCount = flipCount;
    self.flipLabel.text = [NSString stringWithFormat:@"Flips: %d",self.flipCount];
    //    self.flipLabel = [NSString self.flipCount];
}
- (IBAction)flipCard:(UIButton *)sender
{
    if ((!self.initialized) && (!self.deck)) {
        self.deck = [[PlayingCardDeck alloc] init];
        self.initialized = YES;
    }
    Card *card = self.deck.drawRandomCard;
    [sender setTitle:card.contents forState:UIControlStateNormal];
    self.flipCount++;
}


@end
