//
//  ViewController.m
//  20160515Test
//
//  Created by 花生 on 16/5/15.
//  Copyright © 2016年 花生. All rights reserved.
//

#import "ViewController.h"
#import "AppConfig.h"
#import <objc/runtime.h>
#import "AppView.h"
#import "Masonry.h"

@interface ViewController ()<UIWebViewDelegate>{
    AppView * appView;
    UIView * view;
}
@property (copy)NSMutableArray * mutableArray;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    __strong NSString * strA = @"abc";
    NSMutableString * strB = [NSMutableString stringWithFormat:@"abcd"];
    strA = strB;
    NSLog(@"strA:%@",strA);
    [strB appendString:@"mg"];
    NSLog(@"strA:%@",strA);
    
    NSString *  strC = @"abc";
    NSMutableString * strD = [NSMutableString stringWithFormat:@"abcd"];
    strC = [strD copy];
    NSLog(@"strA:%@",strC);
    [strD appendString:@"mg"];
    NSLog(@"strA:%@",strC);

    
    
    
    
    UIWebView * webView = [[UIWebView alloc]init];
    webView.frame = self.view.frame;
    [self.view addSubview:webView];
    webView.delegate = self;
  //  NSMutableURLRequest * request = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:@"http://www.yizhengyun.com.cn/sw_taipingyang/"]];
    NSMutableURLRequest * request = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:@"http://www.yizhengyun.com.cn/sw_taipingyang/"] cachePolicy:NSURLRequestReturnCacheDataDontLoad timeoutInterval:600.f];
    [webView loadRequest:request];
    request.timeoutInterval = 150.0f;
    NSString *tmpDir = NSTemporaryDirectory();
    NSLog(@"tmpDir:%@",tmpDir);
    
    
    view = [[UIView alloc]init];
    [self.view addSubview:view];
    view.backgroundColor = [UIColor greenColor];
    [view mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.view.mas_top).with.offset(10);
        make.width.equalTo(@100);
        make.height.equalTo(@100);
    }];

    dispatch_time_t time = dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3*NSEC_PER_SEC));
    dispatch_after(time, dispatch_get_global_queue(0, 0), ^{
       dispatch_async(dispatch_get_main_queue(), ^{
           [self ldcupdateViewConstraints];
           [UIView animateWithDuration:10.0f animations:^{
               [self.view layoutIfNeeded];
           }];
       });
    });
 
    // Do any additional setup after loading the view, typically from a nib.
}

//- (void)webViewDidFinishLoad:(UIWebView *)webView{
//    
//}

- (void)ldcupdateViewConstraints{
    [view mas_updateConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.view.mas_top).with.offset(self.view.frame.size.height-10);
        make.width.equalTo(@100);
        make.height.equalTo(@100);
    }];
    
    [super updateViewConstraints];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
