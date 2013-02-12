//
//  REMViewController.m
//  Transitions
//
//  Created by Richard E Millet on 2/9/13.
//  Copyright (c) 2013 Richard Millet. All rights reserved.
//

#import "REMViewController.h"
#import "REMDetailViewController.h"

#define DETAIL_VIEW_CONTROLLER_ID "DetailVC"

@interface REMViewController ()<REMDetailViewControllerDelegate>

@end

@implementation REMViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib. Not a chocolate nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//
// Custom IBAction methods
//

- (IBAction)sampleAButtonPressed:(UIButton *)sender {
    REMDetailViewController *detailViewController = [self.storyboard instantiateViewControllerWithIdentifier:@DETAIL_VIEW_CONTROLLER_ID];
    detailViewController.letterToDisplay = @"A";
    detailViewController.delegate = self;
    [self presentViewController:detailViewController animated:YES completion:nil];
}

//
// <REMDetailViewControllerDelegate> Protocol method implementations
//

- (void)userDidDismissDetailViewController:(REMDetailViewController *)detailViewController {
    [self dismissViewControllerAnimated:YES completion:nil];
    NSLog(@"User dismissed detail view controller with letter '%@'", detailViewController.letterToDisplay);
}

@end
