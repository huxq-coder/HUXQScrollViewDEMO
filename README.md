# HUXQScrollViewDEMO

最近碰到一个需求，需要显示滚动视图上显示上一页的部分内容、当前页的全部内容、下一页的部分内容，主要是将UIScrollView 的clipsToBounds属性设置为NO来实现的。
主要代码
```
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
```
