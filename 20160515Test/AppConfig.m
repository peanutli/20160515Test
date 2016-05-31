//
//  AppConfig.m
//  20160515Test
//
//  Created by 花生 on 16/5/16.
//  Copyright © 2016年 花生. All rights reserved.
//

#import "AppConfig.h"

@interface AppConfig()
{
    @private NSString * AppName;
    @public NSString * AppNumber;
    NSString * _title;
}
@end

@implementation AppConfig

//@synthesize title = _title;

- (NSInteger)version{
    return self.version;
}

- (void)setVersion:(NSInteger)version{

}

- (NSString *)title{
    return _title;
}

- (void)setTitle:(NSString *)title{
    if(_title != title){
        _title = [title copy];
    }
}

@end
