//
//  FSViewController.m
//  File Searcher
//
//  Created by Nathan Racklyeft on 2/7/13.
//  Copyright (c) 2013 Nathan Racklyeft. All rights reserved.
//

#import "FSViewController.h"
#import "FSSearcher.h"

@interface FSViewController ()

@end

@implementation FSViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction) searchButtonPressed:(id)sender {
	NSLog(@"starting search");
	
    NSString *searchString = self.searchField.text;
    
}



@end
