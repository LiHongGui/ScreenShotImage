//
//  ScreenShotImage.m
//  CircularReference
//
//  Created by Michael Li on 4/1/19.
//  Copyright © 2019 Michael Li. All rights reserved.
//

#import "ScreenShotImage.h"

@implementation ScreenShotImage


+(void)screenShotWithFrame:(UIView *)currentView{
    
    UIGraphicsBeginImageContext(currentView.frame.size);   //self为需要截屏的UI控件 即通过改变此参数可以截取特定的UI控件
    [currentView.layer renderInContext:UIGraphicsGetCurrentContext()];
    UIImage *image= UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    NSLog(@"image:%@",image); //至此已拿到image
    NSData * data = UIImagePNGRepresentation(image);
    UIImage * pngImage = [UIImage imageWithData:data];
    UIImageWriteToSavedPhotosAlbum(pngImage, self, nil, nil);//把图片保存在本地
}
@end
