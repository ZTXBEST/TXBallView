//
//  BallView.h
//  TXBallView
//
//  Created by 赵天旭 on 2017/9/7.
//  Copyright © 2017年 ZTX. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BallView : UIImageView

- (instancetype)initWithFrame:(CGRect)frame AndImageName:(NSString *)imageName;

- (void)startMotion;
@end
