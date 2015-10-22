//
//  PlayingCard.m
//  Matchismo
//
//  Created by Alexander Krupnik on 21/10/15.
//  Copyright (c) 2015 Alexander Krupnik. All rights reserved.
//

#import "PlayingCard.h"

@implementation PlayingCard

- (NSString *)contents {
    NSArray *rankStrings = [PlayingCard rankStrings];
    return [rankStrings[self.rank] stringByAppendingString:self.suit];
}


+(NSArray *) rankStrings {
    return @[@"?",@"A",@"2",@"3",@"4",@"5",@"6",@"7",
             @"8",@"9",@"10",@"J",@"Q",@"K"];
}


+(NSArray *) validSuits {
    return @[@"♣︎",@"♠︎",@"♦︎",@"♥︎"];
}

+(NSUInteger) maxRank {
    return [[PlayingCard rankStrings] count] -1;
}


@end
