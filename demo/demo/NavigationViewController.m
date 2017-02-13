//
//  NavigationViewController.m
//  demo
//
//  Created by apple_Eric on 13/02/2017.
//  Copyright © 2017 wangshang. All rights reserved.
//

#import "NavigationViewController.h"
#import "NavigataionControllerPopProtocol.h"
@interface UINavigationController (PopItem)
- (BOOL)navigationBar:(UINavigationBar *)navigationBar shouldPopItem:(nonnull UINavigationItem *)item;
@end
@implementation UINavigationController (UINavigationController)

@end
@interface NavigationViewController ()<UINavigationBarDelegate>

@end

@implementation NavigationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
- (BOOL)navigationBar:(UINavigationBar *)navigationBar shouldPopItem:(UINavigationItem *)item{
    UIViewController *vc = self.topViewController;
    if(item != vc.navigationItem){
        return [super navigationBar:navigationBar shouldPopItem:item];
    }
    if([vc conformsToProtocol:@protocol(NavigataionControllerPopProtocol)]){
        if([(id<NavigataionControllerPopProtocol>)vc navigationControllerShouldPopWhenBackBtnSelect:self]){
            return [super navigationBar:navigationBar shouldPopItem:item];
        }else return NO;
    }else return [super navigationBar:navigationBar shouldPopItem:item];
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
