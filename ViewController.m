//
//  ViewController.m
//  Label行间距
//
//  Created by 威盛电气 on 2017/4/24.
//  Copyright © 2017年 GG. All rights reserved.
//

#import "ViewController.h"
#import "UILabel+extension.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UILabel *label = [UILabel new];
    label.frame = CGRectMake(0, 100, self.view.frame.size.width, self.view.frame.size.height-300);
    [self.view addSubview:label];
    
    
    label.backgroundColor = [UIColor purpleColor];
    label.text = @"123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890";
    //当设置了UILabel的attributedText属性时textAlignment会失效  可以通过NSMutableParagraphStyle的baseWritingDirection这个属性来实现
    label.textAlignment = NSTextAlignmentLeft;
    label.numberOfLines = 0;
    [label setColumnSpace:5];
    [label setRowSpace:20];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
