//
//  ViewController.m
//  Matchismo
//
//  Created by Alexander Krupnik on 20/10/15.
//  Copyright (c) 2015 Alexander Krupnik. All rights reserved.
//

#import "ViewController.h"
#import "PlayingCard.h"
#import "PlayingCardDeck.h"


@interface ViewController ()
@property(nonatomic) int flipCount;
@property(strong,nonatomic) Deck *deck;
@end

@implementation ViewController


-(Deck *) deck {
    if(!_deck) _deck = [[PlayingCardDeck alloc] init];
    return _deck;
}


-(void) setFlipCount:(int)flipCount {
    _flipCount = flipCount;
    self.flipsLabel.text = [NSString stringWithFormat:@"Flips: %d",flipCount];
     }

- (IBAction)touchCardButton:(UIButton *)sender {

    //UIImage *cardImage =[UIImage imageNamed:@"cardback"];
    Card *card = [self.deck drawRandomCard];
    if([sender.currentTitle length] ) {
      [sender setBackgroundImage:[UIImage imageNamed:@"cardback"] forState:UIControlStateNormal];
      [sender setTitle:@"" forState:UIControlStateNormal];
    }
    else {
        [sender setBackgroundImage:[UIImage imageNamed:@"cardfront"] forState:UIControlStateNormal];
        [sender setTitle:[card contents] forState:UIControlStateNormal];
    }
    self.flipCount++;

}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
