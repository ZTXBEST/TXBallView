//
//  BallView.m
//  TXBallView
//
//  Created by 赵天旭 on 2017/9/7.
//  Copyright © 2017年 ZTX. All rights reserved.
//

#import "BallView.h"
#import "BallTool.h"

@interface BallView()
@property(nonatomic, assign)UIDynamicItemCollisionBoundsType collisionBoundsType;
@end

@implementation BallView

@synthesize collisionBoundsType;

- (instancetype)initWithFrame:(CGRect)frame AndImageName:(NSString *)imageName {
    self = [super initWithFrame:frame];
    if (self) {
        self.image = [UIImage imageNamed:imageName];
        self.layer.cornerRadius = frame.size.height/2.0;
        self.layer.masksToBounds = YES;
        self.collisionBoundsType = UIDynamicItemCollisionBoundsTypeEllipse;
    }
    return self;
}

- (void)startMotion {
    BallTool *tool = [BallTool shareBallTool];
    [tool addAimView:self referenceView:self.superview];
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
