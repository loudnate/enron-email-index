//
//  FSSearcher.m
//  File Searcher
//
//  Created by Nathan Racklyeft on 2/7/13.
//  Copyright (c) 2013 Nathan Racklyeft. All rights reserved.
//

#import "FSSearcher.h"
#import "FSTokenFile.h"

@implementation FSSearcher

- (id)init {
    self = [super init];
    if (self) {
        _currentNode = [self firstNode];
    }
    return self;
}

- (FSTokenNode *)firstNode {

    NSSet *files = [NSSet setWithObject:nil];
    NSDictionary *suffixTable = [NSDictionary dictionary];
    
    FSTokenNode *node = [[FSTokenNode alloc] initWithKey:@"" files:files suffixTable:suffixTable];
    
    return node;
}

// Perform the index node traversal to return the set of filenames.
- (NSSet *)filesSetForKey:(NSString *)key {
    // Placeholder
    NSSet *files = [NSSet set];
    
    
    
    return files;
}


// Recursively traverses the index until "key" is matched.
- (NSSet *)filesSetForKey:(NSString *)key andNode:(FSTokenNode *)node {
    if ([key isEqualToString:[node key]]) {
        return node.files;
    }
    
    NSString *nextChar = [key substringWithRange:NSMakeRange(node.key.length, 1)];
    id nextNode = [node.suffixTable objectForKey:nextChar];

    if ([nextNode isKindOfClass:[FSTokenFile class]]) {
        // Read the next node from disk using NSKeyedUnarchiver
    }

    return [self filesSetForKey:key andNode:nextNode];
}


@end
