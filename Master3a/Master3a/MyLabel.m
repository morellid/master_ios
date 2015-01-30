//
//  MyLabel.m
//  Master3a
//
//  Created by Davide Morelli on 21/11/14.
//  Copyright (c) 2014 com.biobeats. All rights reserved.
//

#import "MyLabel.h"

@implementation MyLabel


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    NSLog(@"draw!");
    CGContextRef ref = UIGraphicsGetCurrentContext();
    CGRect r = self.bounds;
    [[UIColor redColor] setFill];
    UIRectFill(r);
    [[UIColor blackColor] setStroke];
    CGContextBeginPath(ref);
    CGContextSetLineWidth(ref, 2.0);
    CGContextMoveToPoint(ref, r.origin.x + r.size.width / 2.0, r.origin.y + r.size.height);
    CGContextAddLineToPoint(ref, r.origin.x, r.origin.y);
    CGContextClosePath(ref);
    CGContextStrokePath(ref);
}


@end
