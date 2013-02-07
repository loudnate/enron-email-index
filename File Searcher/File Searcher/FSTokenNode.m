//
//  FSTokenNode.m
//  File Searcher
//
//  Created by Nathan Racklyeft on 2/7/13.
//  Copyright (c) 2013 Nathan Racklyeft. All rights reserved.
//

#import "FSTokenNode.h"

#define FSTokenNodeKey @"key"
#define FSTokenNodeFiles @"files"
#define FSTokenNodeSuffixTable @"suffixTable"


@implementation FSTokenNode

- (id)initWithKey:(NSString *)key files:(NSSet *)files suffixTable:(NSDictionary *) suffixTable {
    self = [super init];
    if (self) {
        _key = key;
        _files = files;
        _suffixTable = suffixTable;
    }
    return self;
}

// NSCoding

- (id)initWithCoder:(NSCoder *)aDecoder {
    NSString *key = [aDecoder decodeObjectForKey:FSTokenNodeKey];
    NSSet *files = [aDecoder decodeObjectForKey:FSTokenNodeFiles];
    NSDictionary *suffixTable = [aDecoder decodeObjectForKey:FSTokenNodeSuffixTable];
    
    return [self initWithKey:key files:files suffixTable:suffixTable];
}

- (void)encodeWithCoder:(NSCoder *)aCoder {
    [aCoder encodeObject:self.key forKey:FSTokenNodeKey];
    [aCoder encodeObject:self.files forKey:FSTokenNodeFiles];
    [aCoder encodeObject:self.suffixTable forKey:FSTokenNodeSuffixTable];
}


@end
