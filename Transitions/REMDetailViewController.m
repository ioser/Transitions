//
//  REMDetailViewController.m
//  Transitions
//
//  Created by Richard E Millet on 2/10/13.
//  Copyright (c) 2013 Richard Millet. All rights reserved.
//

#import "REMDetailViewController.h"

@interface REMDetailViewController ()
@property (weak, nonatomic) IBOutlet UILabel *letterToDisplayLabel;

@end

@implementation REMDetailViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    self.letterToDisplayLabel.text = self.letterToDisplay;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)dismissButtonPressed:(UIButton *)sender {
    [self.delegate userDidDismissDetailViewController:self];
}

@end
