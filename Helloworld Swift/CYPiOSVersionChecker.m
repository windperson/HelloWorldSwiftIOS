//
//  CYPiOSVersionChecker.m
//  Helloworld Swift
//
//  Created by Pao Chen Yu on 7/23/14.
//  Copyright (c) 2014 Pao Chen Yu. All rights reserved.
//

#import "CYPiOSVersionChecker.h"
@import UIKit;

@implementation CYPiOSVersionChecker

+(double) getOSVersion
{
    NSString* osVersion = [[UIDevice currentDevice] systemVersion];
    return osVersion.doubleValue;
}

@end
