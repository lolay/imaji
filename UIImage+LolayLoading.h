//
//  Created by Lolay, Inc.
//  Copyright 2011 Lolay, Inc. All rights reserved.
//
// This is based on the code found in a Stack Overflow post
// http://stackoverflow.com/questions/1815476/cgimage-uiimage-lazily-loading-on-ui-thread-causes-stutter
#import <Foundation/Foundation.h>

@interface UIImage (LolayLoading)

- (void) load;

@end