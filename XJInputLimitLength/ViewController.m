//
//  ViewController.m
//  XJInputDemo
//
//  Created by mac on 2019/5/9.
//  Copyright © 2019 mac. All rights reserved.
//

#import "ViewController.h"

#import "XJTextField.h"
#import "XJTextView.h"

@interface ViewController ()

@property (nonatomic,strong) XJTextField *mTextField;
@property (nonatomic,strong) XJTextView *mTextView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self.view addSubview:self.mTextField];
    [self.view addSubview:self.mTextView];
}

-(XJTextField *)mTextField
{
    if (!_mTextField) {
        _mTextField = [[XJTextField alloc] initWithFrame:CGRectMake(15, 100, self.view.frame.size.width - 30, 40)];
        _mTextField.backgroundColor = [UIColor colorWithRed:(247)/255.0f green:(247)/255.0f blue:(247)/255.0f alpha:1.0];
        _mTextField.font = [UIFont systemFontOfSize:15];
        
        _mTextField.placeholder = @"说点什么好呢...";
        _mTextField.maxLength = 15;
        _mTextField.statisticsType = XJStatisticsSpecial;
    }
    return _mTextField;
}

-(UITextView *)mTextView
{
    if (!_mTextView) {
        _mTextView = [[XJTextView alloc] initWithFrame:CGRectMake(15, 180, self.view.frame.size.width - 30, 120)];
        _mTextView.backgroundColor = [UIColor colorWithRed:(247)/255.0f green:(247)/255.0f blue:(247)/255.0f alpha:1.0];
        _mTextView.font = [UIFont systemFontOfSize:15];
        
        // 开始配置
        _mTextView.placeholderText = @"说点什么好呢...";
        _mTextView.maxLength = 100;
        _mTextView.showTipLb = YES;
        _mTextView.statisticsType = XJStatisticsSpecial;
    }
    return _mTextView;
}

@end
