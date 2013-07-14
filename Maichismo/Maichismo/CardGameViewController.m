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
@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *cardButtons;
@property (weak, nonatomic) IBOutlet UILabel *scoreLabel;
@property (nonatomic) int flipCount;
//@property (nonatomic) PlayingCardDeck *deck;
//@property (nonatomic) BOOL initialized;
//@property (strong, nonatomic) Deck *deck;
@property (strong, nonatomic) CardMatchingGame *game;

@end

@implementation CardGameViewController

//- (Deck *)deck{
//    if (!_deck) {
//        _deck = [[PlayingCardDeck alloc] init];
//    }
//    return _deck;
//}

- (CardMatchingGame *)game{
    if (!_game) {
        _game = [[CardMatchingGame alloc] initWithCardCount:self.cardButtons.count usingDeck:[[PlayingCardDeck alloc] init]];
    }
    return _game;
}

- (void)setCardButtons:(NSArray *)cardButtons{
    _cardButtons = cardButtons;
    [self updateUI];
}

- (void)updateUI{
    for (UIButton *cardButton in self.cardButtons) {
        Card *card = [self.game cardAtIndex:[self.cardButtons indexOfObject:cardButton]];
        [cardButton setTitle:card.contents forState:UIControlStateSelected];
        [cardButton setTitle:card.contents forState:UIControlStateSelected|UIControlStateDisabled];
        cardButton.selected = card.isFaceUp;
        cardButton.enabled = !card.isUnplayable;
        cardButton.alpha = card.isUnplayable ? 0.3 : 1.0;
    }
    self.scoreLabel.text = [NSString stringWithFormat:@"Score: %d", self.game.score];
}

- (void)setFlipCount:(int)flipCount
{
    _flipCount = flipCount;
    self.flipLabel.text = [NSString stringWithFormat:@"Flips: %d",self.flipCount];
//    self.flipLabel = [NSString self.flipCount];
}
- (IBAction)flipCard:(UIButton *)sender
{
    [self.game flipCardAtIndex:[self.cardButtons indexOfObject:sender]];
    self.flipCount++;
    [self updateUI];
}


@end



//- (void)setFlipCount:(int)flipCount
//{
//    _flipCount = flipCount;
//    self.flipLabel.text = [NSString stringWithFormat:@"Flips: %d",self.flipCount];
//    //    self.flipLabel = [NSString self.flipCount];
//}
//- (IBAction)flipCard:(UIButton *)sender
//{
//    if ((!self.initialized) && (!self.deck)) {
//        self.deck = [[PlayingCardDeck alloc] init];
//        self.initialized = YES;
//    }
//    Card *card = self.deck.drawRandomCard;
//    [sender setTitle:card.contents forState:UIControlStateNormal];
//    self.flipCount++;
//}

