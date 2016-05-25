//
//  ViewController.h
//  AndroTab
//
//  Created by Rokon Uddin on 3/30/16.
//  Copyright © 2016 Rokon Uddin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIScrollViewDelegate>

@property (weak, nonatomic) IBOutlet UIView *scrollIndicator;
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *scrollIndicatorLeadingConstraint;

@end

