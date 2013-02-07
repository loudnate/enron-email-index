//
//  FSTokenNode.h
//  File Searcher
//
//  Created by Nathan Racklyeft on 2/7/13.
//  Copyright (c) 2013 Nathan Racklyeft. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FSTokenNode : NSObject<NSCoding> {
    NSString *_key;
    NSSet *_files;
    NSDictionary *_suffixTable;
}

@property(nonatomic, copy, readonly) NSString *key;
@property(nonatomic, copy, readonly) NSSet *files;
@property(nonatomic, copy, readonly) NSDictionary *suffixTable;

// Initializes a node with existing data.
- (id)initWithKey:(NSString *)key files:(NSSet *)files suffixTable:(NSDictionary *) suffixTable;

@end
