//
//  FileProtocol.h
//  3.1
//
//  Created by 李林涛 on 14/12/11.
//  Copyright (c) 2014年 李林涛. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol FileProtocol <NSObject>

@required
- (void) read;
@optional
- (void) write;
@end
