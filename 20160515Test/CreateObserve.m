//
//  CreateObserve.m
//  20160515Test
//
//  Created by 花生 on 16/6/9.
//  Copyright © 2016年 花生. All rights reserved.
//

#import "CreateObserve.h"

@implementation CreateObserve

- (instancetype)initWithName:(NSString *)name createSubject:(CreateSubject *)createSubject{
    self = [super init];
    if (self) {
        self.name = name;
        self.createSubject = createSubject;
    }
    return self;
}

- (void)update{
    self.createSubjectState = self.createSubject.createSubjectState;
    NSLog(@"CreateObserveName:%@,CreateObserveState:%@",self.name,self.createSubjectState);
}
@end
