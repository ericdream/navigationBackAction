//
//  ViewController.m
//  demo
//
//  Created by apple_Eric on 13/02/2017.
//  Copyright © 2017 wangshang. All rights reserved.
//

#import "ViewController.h"
#import "ViewController2ViewController.h"
@interface ViewController ()
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIButton *button1 = [[UIButton alloc] initWithFrame:CGRectMake(100, 160, 100, 50)];
    [button1 setTitle:@"button" forState:UIControlStateNormal];
    [button1 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [button1 addTarget:self action:@selector(buttonAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button1];

    self.view.backgroundColor = [UIColor whiteColor];
//    UIButton *
    // Do any additional setup after loading the view, typically from a nib.
}
- (void)buttonAction{
    ViewController2ViewController *vc = [[ViewController2ViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
