//
//  ScreenShotImage.h
//  CircularReference
//
//  Created by Michael Li on 4/1/19.
//  Copyright © 2019 Michael Li. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
NS_ASSUME_NONNULL_BEGIN

@interface ScreenShotImage : NSObject
+(void)screenShotWithFrame:(UIView *)currentView;
@end

NS_ASSUME_NONNULL_END
