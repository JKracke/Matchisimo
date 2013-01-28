//
//  Card.h
//  Matchisimo
//
//  Created by Jean E Kracke on 1/26/13.
//  Copyright (c) 2013 ByKracke. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject
@property (strong, nonatomic) NSString *contents;

@property (nonatomic, getter = isFaceUp) BOOL faceUp;
@property (nonatomic, getter = isUnplayable) BOOL unplayable;

- (int)match:(NSArray *)otherCards;

@end
