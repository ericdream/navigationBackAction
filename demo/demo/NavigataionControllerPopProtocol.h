//
//  NavigataionControllerPopProtocol.h
//  Share
//
//  Created by apple_Eric on 13/02/2017.
//  Copyright © 2017 apple. All rights reserved.
//

#import <Foundation/Foundation.h>
@class NavigationViewController;
@protocol NavigataionControllerPopProtocol <NSObject>
- (BOOL)navigationControllerShouldPopWhenBackBtnSelect:(NavigationViewController *)navitagionController;
@end
