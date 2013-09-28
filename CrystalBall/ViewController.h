//
//  ViewController.h
//  CrystalBall
//
//  Created by Eliza Hyde on 9/24/13.
//  Copyright (c) 2013 Elizahyde. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    NSArray *predictionArray;
}

@property (strong, nonatomic) IBOutlet UILabel *predictionLabel;
@property (strong, nonatomic) NSArray *predictionArray;
@property (strong, nonatomic) UIImageView *imageView;

- (void) makePrediction;
@end
