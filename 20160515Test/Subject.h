//
//  Subject.h
//  20160515Test
//
//  Created by 花生 on 16/6/9.
//  Copyright © 2016年 花生. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Observe.h"
@interface Subject : NSObject

@property (nonatomic,strong) NSMutableArray * observeArray;

- (void)addObserverItem:(id<Observe>) observe;
- (void)deleteObserveItem:(id<Observe>) observe;
- (void)notify;

@end
