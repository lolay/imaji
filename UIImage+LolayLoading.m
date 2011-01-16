//
//  Created by Lolay, Inc.
//  Copyright 2011 Lolay, Inc. All rights reserved.
//
#import "UIImage+LolayLoading.h"

@implementation UIImage (LolayLoading)

- (void) load {
	const CGImageRef cgImage = [self CGImage];  

	const int width = CGImageGetWidth(cgImage);
	const int height = CGImageGetHeight(cgImage);

	const CGColorSpaceRef colorspace = CGImageGetColorSpace(cgImage);
	const CGContextRef context = CGBitmapContextCreate(
													   NULL, /* Where to store the data. NULL = don’t care */
													   width, height, /* width & height */
													   8, width * 4, /* bits per component, bytes per row */
													   colorspace, kCGImageAlphaNoneSkipFirst);
	
	CGContextDrawImage(context, CGRectMake(0, 0, width, height), cgImage);
	CGContextRelease(context);
}

@end