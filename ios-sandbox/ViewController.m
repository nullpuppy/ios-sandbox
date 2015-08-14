//
//  ViewController.m
//  ios-sandbox
//
//  Created by Dustin Knie on 8/12/15.
//  Copyright © 2015 dukn. All rights reserved.
//

#import "ViewController.h"
#import "MMDrawerController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    [self performSegueWithIdentifier:@"DRAWER_SEGUE" sender:self];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if([segue.identifier isEqualToString:@"DRAWER_SEGUE"]) {
        MMDrawerController *destinationController = (MMDrawerController *)segue.destinationViewController;
        UIViewController *centerViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"FEED_CONTROLLER"];
        [destinationController setCenterViewController:centerViewController];
        UIViewController *drawerController = [self.storyboard instantiateViewControllerWithIdentifier:@"DRAWER_CONTROLLER"];
        [destinationController setLeftDrawerViewController:drawerController];
    }
}

@end
