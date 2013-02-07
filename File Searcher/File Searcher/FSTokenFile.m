//
//  FSTokenFile.m
//  File Searcher
//
//  Created by Nathan Racklyeft on 2/7/13.
//  Copyright (c) 2013 Nathan Racklyeft. All rights reserved.
//

#import "FSTokenFile.h"

#define FSTokenFileFilename @"filename"

@implementation FSTokenFile

- (id)initWithFilename:(NSString *)filename {
    self = [super init];
    if (self) {
        _filename = filename;
    }
    return self;
}

// NSCoding

- (id)initWithCoder:(NSCoder *)aDecoder {
    NSString *filename = [aDecoder decodeObjectForKey:FSTokenFileFilename];
    
    return [self initWithFilename:filename];
}

- (void)encodeWithCoder:(NSCoder *)aCoder {
    [aCoder encodeObject:self.filename forKey:FSTokenFileFilename];
}

@end
