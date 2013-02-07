//
//  FSViewController.h
//  File Searcher
//
//  Created by Nathan Racklyeft on 2/7/13.
//  Copyright (c) 2013 Nathan Racklyeft. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FSViewController : UIViewController {
    IBOutlet UITextField *_searchField;
    IBOutlet UIButton *_searchButton;
    IBOutlet UITextView *_searchResults;
}

@property(nonatomic, retain) UITextField *searchField;
@property(nonatomic, retain) UIButton *searchButton;
@property(nonatomic, retain) UITextView *searchResults;



@end
