//
//  SingletonSample.m
//  Singleton
//
//  Created by oda yuma on 2014/05/03.
//  Copyright (c) 2014年 yuma oda. All rights reserved.
//
//  参考URL
//  http://qiita.com/yuky_az/items/27031ec5ca55a95d6209
//  http://programming-ios.com/objective-c-singleton/
//  http://cocoaapi.hatenablog.com/entry/00020106/NSObject_doesNotRecognizeSelector_

#import "SingletonSample.h"

@implementation SingletonSample

static SingletonSample *sharedObj = nil;

+(SingletonSample*)sharedManager
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedObj = [[SingletonSample alloc] initSharedInstance];
    });
    return sharedObj;
}

-(id)initSharedInstance
{
    self = [super init];
    if (self) {
        //初期化処理
    }
    return self;
}

-(id)init
{
    //外部からinitメソッドが呼ばれたらエラーになるようにして、sharedManagerを呼ばずにインスタンスを生成してしまうのを防いでいます。
    //例外が投げられます(NSInvalidArgumentException)
    [self doesNotRecognizeSelector:_cmd]; //
    return nil;
}

-(void)sampleMethod
{
    NSLog(@"SingletomSample::sampleMethod");
}

@end
