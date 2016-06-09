//
//  Subject.m
//  20160515Test
//
//  Created by 花生 on 16/6/9.
//  Copyright © 2016年 花生. All rights reserved.
//

#import "Subject.h"

@implementation Subject

- (instancetype)init{
    self = [super init];
    if (self) {
        self.observeArray = [[NSMutableArray alloc]init];
    }
    return self;
}

- (void)addObserverItem:(id<Observe>)observe{
    if (![self.observeArray containsObject:observe]) {
        [self.observeArray addObject:observe];
    }
}

- (void)deleteObserveItem:(id<Observe>)observe{
    if ([self.observeArray containsObject:observe]) {
        [self.observeArray removeObject:observe];
    }
}

- (void)notify{
    id<Observe> observe;
    for (int i = 0; i < self.observeArray.count; i++) {
        observe = [self.observeArray objectAtIndex:i];
        [observe update];
    }
}
@end
