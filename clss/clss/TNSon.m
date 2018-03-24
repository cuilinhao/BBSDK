//
//  TNSon.m
//  clss
//
//  Created by 崔林豪 on 2018/3/5.
//  Copyright © 2018年 崔林豪. All rights reserved.
//

#import "TNSon.h"

@implementation TNSon

- (instancetype)init
{
    self = [super init];
    if (self) {
        NSLog(@"%@", NSStringFromClass([self class]));
        NSLog(@"%@", NSStringFromClass([super class]));
        
    }
    return self;
}
@end
