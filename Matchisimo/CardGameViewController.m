//
//  CardGameViewController.m
//  Matchisimo
//
//  Created by Jean E Kracke on 1/26/13.
//  Copyright (c) 2013 ByKracke. All rights reserved.
//

#import "CardGameViewController.h"
#import "PlayingCardDeck.h" //import the model
//#import "PlayingCard.h" //do I need this??

@interface CardGameViewController ()
@property (weak, nonatomic) IBOutlet UILabel *flipsLabel;
@property (nonatomic) int flipCount;
@property (nonatomic, strong) PlayingCardDeck *myDeck;
@end

@implementation CardGameViewController
- (PlayingCardDeck *)myDeck
{
    if (!_myDeck) _myDeck = [[PlayingCardDeck alloc] init];
    return _myDeck;
}

- (void)setFlipCount:(int)flipCount
{
    _flipCount = flipCount;
    self.flipsLabel.text = [NSString stringWithFormat:@"Flips: %d", self.flipCount];
}
- (IBAction)flipCard:(UIButton *)sender
{
    sender.selected = !sender.isSelected;
//    self.flipCount++; //I'd rather have the counter show me how many cards I have flipped over. not double that.
    if (sender.isSelected) {
        self.flipCount++;
        Card *card = [self.myDeck drawRandomCard];
        if (card) {
            [sender setTitle: card.contents forState:(UIControlStateSelected)];
                        
        } else {
            [sender setTitle:@"" forState:(UIControlStateSelected)];
            self.flipsLabel.text = @"The deck is empty";
        }
        
    }
}

@end
