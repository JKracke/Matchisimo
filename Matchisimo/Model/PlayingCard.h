//
//  PlayingCard.h
//  Matchisimo
//
//  Created by Jean E Kracke on 1/26/13.
//  Copyright (c) 2013 ByKracke. All rights reserved.
//

//#import <Foundation/Foundation.h>
#import "Card.h"

@interface PlayingCard : Card
@property (strong, nonatomic) NSString *suit;
@property (nonatomic) NSUInteger rank;

+ (NSArray *)validSuits;
+ (NSUInteger)maxRank;


@end
