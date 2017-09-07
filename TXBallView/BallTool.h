//
//  BallTool.h
//  TXBallView
//
//  Created by 赵天旭 on 2017/9/7.
//  Copyright © 2017年 ZTX. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BallView.h"

@interface BallTool : NSObject

@property(nonatomic, strong)UIView *referenceView;

+ (instancetype)shareBallTool;


-(void)addAimView:(BallView *)ballView referenceView:(UIView *)referenceView;

@end
