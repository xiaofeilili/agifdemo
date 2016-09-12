//
//  ViewController.m
//  GIFDemo
//
//  Created by 李飞飞 on 15/12/2.
//  Copyright © 2015年 李晓飞. All rights reserved.
//

#import "ViewController.h"
#import "UIImage+GIF.h"

@interface ViewController ()

@property (nonatomic, strong)UIImageView *loadingImageView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor cyanColor];
    
    [self initLoadingImageView];
}

//- (void)initLoadingImageView {
//    NSString *name = @"splash6p.gif";
//    
//    NSString  *filePath = [[NSBundle bundleWithPath:[[NSBundle mainBundle] bundlePath]] pathForResource:name ofType:nil];
//    
//    NSData *imageData = [NSData dataWithContentsOfFile:filePath];
//    
//    if (!self.loadingImageView) {
//        self.loadingImageView = [[UIImageView alloc] init];
//    }
//    
//    self.loadingImageView.backgroundColor = [UIColor clearColor];
//    self.loadingImageView.image = [UIImage sd_animatedGIFWithData:imageData];
//    self.loadingImageView.frame = self.view.bounds;
//    [self.view addSubview:self.loadingImageView];
//    [self.view bringSubviewToFront:self.loadingImageView];
//}

- (void)initLoadingImageView {
    NSString *name = @"jiafei.gif";
    
    NSString  *filePath = [[NSBundle bundleWithPath:[[NSBundle mainBundle] bundlePath]] pathForResource:name ofType:nil];
    
    NSData *imageData = [NSData dataWithContentsOfFile:filePath];
    
    if (!self.loadingImageView) {
        self.loadingImageView = [[UIImageView alloc] init];
    }
    
    self.loadingImageView.backgroundColor = [UIColor clearColor];
    self.loadingImageView.image = [UIImage sd_animatedGIFWithData:imageData];
    self.loadingImageView.frame = CGRectMake(100, 100, 100, 100);
    [self.view addSubview:self.loadingImageView];
    [self.view bringSubviewToFront:self.loadingImageView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
