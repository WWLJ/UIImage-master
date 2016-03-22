//
//  ViewController.m
//  Image-master
//
//  Created by YiTie on 16/3/22.
//  Copyright © 2016年 武文杰. All rights reserved.
//

#import "ViewController.h"
#import "UIImage+Helper.h"
@interface ViewController ()

@property (nonatomic, strong)UIImageView *backImageView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    CGFloat width = [[UIScreen mainScreen] bounds].size.width;
    CGFloat height = [[UIScreen mainScreen] bounds].size.height;
    
    _backImageView = [[UIImageView alloc] initWithFrame:CGRectMake(20, 100, 300, 300)];
    [self.view addSubview:_backImageView];
    UIImage *oldImage = [UIImage imageNamed:@"2"];
    UIImage *newImage = [UIImage imageNamed:@"3"];
    
    NSValue *value1 = [NSValue valueWithCGRect:CGRectMake(0, 0, 165, 300)];
    NSValue *value2 = [NSValue valueWithCGRect:CGRectMake(165, 0, 165, 300)];
    
    
//    _backImageView.image = [UIImage mixImageWithImageArray:@[oldImage, newImage] andImageOffsetArray:@[value1, value2] andBackImageViewSize:CGSizeMake(330, 300)];
    _backImageView.image = [UIImage waterImageWith:oldImage logo:newImage];;
    
    
//    UIImageView *newImageView = [[UIImageView alloc] initWithFrame:CGRectMake(140, 400, 200, 200)];
//    
//    [self.view addSubview:newImageView];
//    newImageView.image = [UIImage captureWithView:_backImageView];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
