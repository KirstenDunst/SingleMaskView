//
//  CSSingleMaskView.h
//  text
//
//  Created by CSX on 2018/1/9.
//  Copyright © 2018年 宗盛商业. All rights reserved.
//

//app新功能的引导蒙版样式设置


#import <UIKit/UIKit.h>

@interface CSSingleMaskView : UIView

/**
 *  蒙版颜色(非透明区颜色，默认黑色0.5透明度)
 */
@property (nonatomic, strong) UIColor *maskColor;

/**
 *  添加矩形透明区(位置和弧度)
 */
- (void)addTransparentRect:(CGRect)rect withRadius:(CGFloat)radius;

/**
 *  添加圆形透明区
 */
- (void)addTransparentOvalRect:(CGRect)rect;

/**
 *  添加图片(图片和位置)
 */
- (void)addImage:(UIImage*)image withFrame:(CGRect)frame;

/**
 *  添加文字(内容，字体位置，字号，字体颜色，位置)
 *  内容在frame内部自动折行（多行）显示
 */
- (void)addText:(NSString *)title withTextAlignment:(NSTextAlignment)textAlignment fontSize:(CGFloat)size textColor:(UIColor *)textColor andFrame:(CGRect)frame;


/**   在指定view上显示蒙版（过渡动画）
 *   不调用用此方法可使用 addSubview:自己添加展示
 */
- (void)showMaskViewInView:(UIView *)view;

/**
 *  销毁蒙版view(默认点击空白区自动销毁)
 */
- (void)dismissMaskView;

@end
