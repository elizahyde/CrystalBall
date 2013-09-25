//
//  ViewController.m
//  CrystalBall
//
//  Created by Eliza Hyde on 9/24/13.
//  Copyright (c) 2013 Elizahyde. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize predictionLabel;
@synthesize predictionArray;

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UIImage *image =  [UIImage imageNamed:@"background.png"];
    UIImageView *imageView = [[UIImageView alloc] initWithImage:image];
    [self.view insertSubview:imageView atIndex:0];
    
    self.predictionArray = [[NSArray alloc] initWithObjects:@"It is Certain",
                                @"It is decidedly so",
                                @"All the signs say YES",
                                @"The stars are not aligned",
                                @"My reply is no",
                                @"It is doubtful",
                                @"Better not tell you now",
                                @"Maybe yes",
                                @"Concentrate and ask again",
                                @"Unable to answer now", nil];

	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonPressed:(UIButton *)sender {
    NSUInteger index = arc4random_uniform(self.predictionArray.count);
    self.predictionLabel.text = [self.predictionArray objectAtIndex:index];
}

- (BOOL) canBecomeFirstResponder {
    return YES;
}

- (void) motionBegan:(UIEventSubtype)motion withEvent:(UIEvent *)event {
    self.predictionLabel.text = @"";
}

- (void) motionEnded:(UIEventSubtype)motion withEvent:(UIEvent *)event {
    if ( motion == UIEventSubtypeMotionShake ){
        NSUInteger index = arc4random_uniform(self.predictionArray.count);
        self.predictionLabel.text = [self.predictionArray objectAtIndex:index];
    }
}

- (void) motionCancelled:(UIEventSubtype)motion withEvent:(UIEvent *)event {
    
    NSLog(@"motion cancelled");
}
@end
