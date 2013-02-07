//
//  FSSearcher.h
//  File Searcher
//
//  Created by Nathan Racklyeft on 2/7/13.
//  Copyright (c) 2013 Nathan Racklyeft. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FSTokenNode.h"

@interface FSSearcher : NSObject {
    FSTokenNode *_currentNode;
}

@property(nonatomic, retain) FSTokenNode *currentNode;

// Begins a search to retreive a set of filenames that contain a given string.
- (NSSet *)filesSetForKey:(NSString *)key;

@end
