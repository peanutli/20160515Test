//
//  CreateObserve.h
//  20160515Test
//
//  Created by 花生 on 16/6/9.
//  Copyright © 2016年 花生. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Observe.h"
#import "CreateSubject.h"
@interface CreateObserve : NSObject<Observe>
@property (nonatomic,copy) NSString * name;
@property (nonatomic,strong) CreateSubject * createSubject;
@property (nonatomic,copy) NSString * createSubjectState;
- (instancetype)initWithName: (NSString *)name createSubject: (CreateSubject *)createSubject;
@end
