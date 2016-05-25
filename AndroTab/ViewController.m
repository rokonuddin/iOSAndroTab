//
//  ViewController.m
//  AndroTab
//
//  Created by Rokon Uddin on 3/30/16.
//  Copyright © 2016 Rokon Uddin. All rights reserved.
//
#define MAIN_SCREEN_WIDTH                              ([[UIScreen mainScreen] bounds].size.width)
#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.scrollView.delegate = self;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    self.scrollIndicatorLeadingConstraint.constant = scrollView.contentOffset.x * 0.25;
    [self.view layoutIfNeeded];
    
}

- (IBAction)topButtonPressed:(UIButton *)sender {
    CGPoint newOffSet = CGPointMake(sender.tag*MAIN_SCREEN_WIDTH, 0.0);
    [self.scrollView setContentOffset:newOffSet animated:YES];
}

@end
