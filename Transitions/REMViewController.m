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
#define SEGUE_B_IDENTIFIER "segueB"

@interface REMViewController ()<REMDetailViewControllerDelegate>

@property (strong, nonatomic) NSString *buttonPressed;

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
// Overrides
//

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    REMDetailViewController *detailViewController = segue.destinationViewController;
    detailViewController.letterToDisplay = self.buttonPressed;
    detailViewController.delegate = self;
}

//
// Custom IBAction methods
//

- (IBAction)sampleAButtonPressed:(UIButton *)sender {
    self.buttonPressed = @"A";
    REMDetailViewController *detailViewController = [self.storyboard instantiateViewControllerWithIdentifier:@DETAIL_VIEW_CONTROLLER_ID];
    detailViewController.letterToDisplay = self.buttonPressed;
    detailViewController.delegate = self;
    [self presentViewController:detailViewController animated:YES completion:nil];
}

- (IBAction)sampleBPressed:(UIButton *)sender {
    self.buttonPressed = @"B";
    [self performSegueWithIdentifier:@SEGUE_B_IDENTIFIER sender:self];
}

//
// <REMDetailViewControllerDelegate> Protocol method implementations
//

- (void)userDidDismissDetailViewController:(REMDetailViewController *)detailViewController {
    [self dismissViewControllerAnimated:YES completion:nil];
    NSLog(@"User dismissed detail view controller with letter '%@'", detailViewController.letterToDisplay);
}

@end
