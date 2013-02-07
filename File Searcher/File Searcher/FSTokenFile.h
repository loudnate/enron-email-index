//
//  FSTokenFile.h
//  File Searcher
//
//  Created by Nathan Racklyeft on 2/7/13.
//  Copyright (c) 2013 Nathan Racklyeft. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FSTokenFile : NSObject<NSCoding> {
    NSString *_filename;
}

@property(nonatomic, copy, readonly) NSString *filename;

- (id)initWithFilename:(NSString *)filename;

@end
