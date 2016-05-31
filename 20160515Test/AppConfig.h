//
//  AppConfig.h
//  20160515Test
//
//  Created by 花生 on 16/5/16.
//  Copyright © 2016年 花生. All rights reserved.
//

#import <Foundation/Foundation.h>
typedef NS_ENUM(NSInteger,LDCSex){
    LDCSexMan = 0,
    LDSSexWoman = 1
};
struct LDCStruct{
    NSInteger age;
    LDCSex  sex;
    __unsafe_unretained NSString * LDCName;
} ;

@interface AppConfig : NSObject
@property (nonatomic,assign) NSInteger version;
@property (nonatomic,copy) NSString * appIntroducion;
@property (nonatomic,assign) struct LDCStruct ldcStruct;
@property (nonatomic,copy) NSString * title;
@end
