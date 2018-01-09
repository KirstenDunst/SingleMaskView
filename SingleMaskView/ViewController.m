//
//  ViewController.m
//  SingleMaskView
//
//  Created by CSX on 2018/1/9.
//  Copyright © 2018年 宗盛商业. All rights reserved.
//

#import "ViewController.h"
#import "CSSingleMaskView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor cyanColor];
    
    //可以在打开app的时候根据版本号以及上一个本地的版本号相比较，大于存储的版本号或者是不想等的话清除所有的user的存储
    
    if (![[[NSUserDefaults standardUserDefaults]objectForKey:@"IsAlreadyShow"] boolValue]) {
        CSSingleMaskView *singView = [[CSSingleMaskView alloc]init];
        [singView addTransparentOvalRect:CGRectMake(0, 100, 100, 100)];
        [singView addTransparentRect:CGRectMake(100, 260, 100, 100) withRadius:5];
        [singView addText:@"测试一下啊" withTextAlignment:NSTextAlignmentCenter fontSize:18 textColor:[UIColor redColor] andFrame:CGRectMake(100, 220, 100, 40)];
        [singView showMaskViewInView:self.view];
        
        [[NSUserDefaults standardUserDefaults] setObject:@"1" forKey:@"IsAlreadyShow"];
    }

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
