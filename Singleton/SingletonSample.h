//
//  SingletonSample.h
//  Singleton
//
//  Created by oda yuma on 2014/05/03.
//  Copyright (c) 2014年 yuma oda. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SingletonSample : NSObject

+(SingletonSample*)sharedManager;

-(void)sampleMethod;

@end
