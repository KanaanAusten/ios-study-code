//
//  BKPlayer.h
//  DemoSDK
//
//  Created by 徐赢 on 14-9-17.
//  Copyright (c) 2014年 徐赢. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol BKPlayerDelegate;

@interface BKPlayer : NSObject

@property(nonatomic,weak)id<BKPlayerDelegate>delegate;

-(void)setMP3URL:(NSString *)url;

-(void)play;
-(void)pause;

@end

@protocol BKPlayerDelegate <NSObject>

-(void)didFinishPlay:(BKPlayer *)player;

@end
