//
//  ViewController2ViewController.m
//  demo
//
//  Created by apple_Eric on 13/02/2017.
//  Copyright © 2017 wangshang. All rights reserved.
//

#import "ViewController2ViewController.h"
#import "NavigataionControllerPopProtocol.h"
@interface ViewController2ViewController ()<NavigataionControllerPopProtocol>

@end

@implementation ViewController2ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    // Do any additional setup after loading the view.
}
- (BOOL)navigationControllerShouldPopWhenBackBtnSelect:(NavigationViewController *)navitagionController{
    NSLog(@"是否需要保存数据");
    return NO;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
