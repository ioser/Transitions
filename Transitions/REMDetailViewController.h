//
//  REMDetailViewController.h
//  Transitions
//
//  Created by Richard E Millet on 2/10/13.
//  Copyright (c) 2013 Richard Millet. All rights reserved.
//

#import <UIKit/UIKit.h>

// Forward declaration of REMDetailViewControllerDelegate protocol
@protocol REMDetailViewControllerDelegate;

@interface REMDetailViewController : UIViewController

@property (strong, nonatomic) NSString *letterToDisplay;
@property (weak, nonatomic) id<REMDetailViewControllerDelegate> delegate;

@end

//
// Definition of REMDetailViewControllerDelegate protocol
//
@protocol REMDetailViewControllerDelegate <NSObject>

- (void)userDidDismissDetailViewController:(REMDetailViewController *)detailViewController;

- (NSString *)buttonPressedLetter;

@end
