//
//  ViewController.m
//  TXBallView
//
//  Created by 赵天旭 on 2017/9/7.
//  Copyright © 2017年 ZTX. All rights reserved.
//

#import "ViewController.h"
#import "BallView.h"


@interface ViewController ()
@property(nonatomic, strong)NSArray *array;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.array = @[@"大师球",@"高级球",@"超级球",@"精灵球"];

}
- (IBAction)buttonClick:(id)sender {
    BallView *ball = [[BallView alloc] initWithFrame:CGRectMake(0, 80, 50, 50) AndImageName:self.array[arc4random_uniform(4)]];
    [self.view addSubview:ball];
    [ball startMotion];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
