//
//  ViewController.m
//  HUXQScrollViewDEMO
//
//  Created by huxq-coder on 2019/3/25.
//  Copyright © 2019 huxq-coder. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    CGFloat width = self.view.frame.size.width;
    CGFloat interval = 20.f;
    CGFloat scrollViewWidth = width - 2*interval;
    UIScrollView *scrollView = [[UIScrollView alloc] init];
    scrollView.frame = CGRectMake(interval, 100, scrollViewWidth, 300);
    scrollView.pagingEnabled = YES;
    /// 超出边界可见，不写此行，imageview两边超出部分不显示
    scrollView.clipsToBounds = NO;
    [self.view addSubview:scrollView];
    
    for (int i = 0; i < 4; i++) {
        NSString *imageName = [NSString stringWithFormat:@"0%d",i+1];
        UIImageView *imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:imageName]];
        imageView.frame = CGRectMake(i*scrollViewWidth+10, 0, scrollViewWidth-20, 300);
        [scrollView addSubview:imageView];
    }
    scrollView.contentSize = CGSizeMake(scrollViewWidth*4, 0);
}




@end
