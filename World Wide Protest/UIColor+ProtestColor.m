//
//  UIColor+RiedelColor.m
//  Krypton
//
//  Created by Frederik Riedel on 13.09.15.
//  Copyright (c) 2015 Quappi. All rights reserved.
//

#import "UIColor+ProtestColor.h"

@implementation UIColor (ProtestColor)

+(UIColor *) protestColor {
    return [UIColor colorWithRed:0.f/255.f green:147.f/255.f blue:147.f/255.f alpha:1.0];
}

+(UIColor *) batteryFullColor {
    return [UIColor colorWithRed:118.f/255.f green:214.f/255.f blue:113.f/255.f alpha:1.0];
}

+(UIColor *) selectionColor {
    //return [UIColor colorWithRed:100.f/255.f green:100.f/255.f blue:100.f/255.f alpha:1.0];
    return [UIColor colorWithRed:200.0/255.0 green:148.0/255.0 blue:147.0/255.0 alpha:1.0];
}

@end
