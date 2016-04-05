//
//  ViewController.m
//  ScrollViewSample
//
//  Created by Gyroball on 2016/03/23.
//  Copyright © 2016年 Yuhei Okubo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutlet UIView *contentView;
@property (strong, nonatomic) IBOutlet NSLayoutConstraint *contentViewWidth;
@property (strong, nonatomic) NSArray *imageLists;
@end

@implementation ViewController

#pragma mark - Life Cycle
- (void)viewDidLoad {
    [super viewDidLoad];

    [self setImageData];
    [self setImageView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark - View
- (void)setImageView
{
    _contentViewWidth.constant = self.view.frame.size.width *_imageLists.count;
    [self createImageView];
}
- (void)createImageView
{
    for (int i = 0; i < _imageLists.count; i++) {
        UIImageView *imageView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:_imageLists[i]]];
        imageView.contentMode = UIViewContentModeScaleAspectFit;
        imageView.frame = CGRectMake(i * self.view.frame.size.width, 0, self.view.frame.size.width, self.view.frame.size.height);
        [_contentView addSubview:imageView];
    }

}

#pragma mark - Data
- (void)setImageData
{
    _imageLists = @[@"1.png",@"2.png",@"3.png"];
}
@end