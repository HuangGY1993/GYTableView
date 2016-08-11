//
//  GYTableView.m
//  GYTableView
//
//  Created by 黄国裕 on 16/8/11.
//  Copyright © 2016年 黄国裕. All rights reserved.
//

#import "GYTableView.h"

@implementation GYTableView
{
    CGPoint touchPoint;//触摸tableview位置
}

//@synthesize delegate = _myDelegate;
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
- (instancetype)init
{
    self = [super init];
    if (self) {
        NSLog(@"addGestureRecognizer");
//        [super setDelegate:self];
//        UITapGestureRecognizer *oneTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:nil];
//        oneTap.delegate = self;
//        oneTap.numberOfTouchesRequired = 1;
//        [self addGestureRecognizer:oneTap];
    }
    return self;
}

//- (void)tableView:(UITableView *)tableView didHighlightRowAtIndexPath:(NSIndexPath *)indexPath
//{
//    NSLog(@"触摸一下");
//    NSLog(@"%.2f   %.2f",touchPoint.x,touchPoint.y);
//    
////    UITableViewCell *cell = [fileTableView  cellForRowAtIndexPath:[NSIndexPath indexPathForRow:[indexPath row] inSection:indexPath.section]];
////    UIView *BGView = [cell.contentView viewWithTag:10];
////    UIImageView *PointView = [cell.contentView viewWithTag:9];
////    
////    CGPoint thePoint = [self.view convertPoint:touchPoint toView:BGView];
////    NSLog(@"%.2f   %.2f",touchPoint.x,touchPoint.y);
////    PointView.frame = CGRectMake(thePoint.x - 5, thePoint.y - 5, 10, 10);
////    
////    PointView.alpha = 1;
////    PointView.hidden = NO;
////    [UIView animateWithDuration:0.3 animations:^{
////        
////        CGFloat radius = sqrt(pow(CGRectGetWidth(BGView.bounds), 2) + pow(CGRectGetHeight(BGView.bounds), 2));
////        PointView.frame = CGRectMake(thePoint.x - radius, thePoint.y - radius, 2 * radius, 2 * radius);
////        
////    }completion:^(BOOL finished) {
////        
////        
////    }];
//}
//
//- (void)tableView:(UITableView *)tableView didUnhighlightRowAtIndexPath:(NSIndexPath *)indexPath
//{
////    UITableViewCell *cell = [fileTableView cellForRowAtIndexPath:[NSIndexPath indexPathForRow:[indexPath row] inSection:indexPath.section]];
////    UIImageView *PointView = [cell.contentView viewWithTag:9];
////    [UIView animateWithDuration:0.8 animations:^{
////        
////        PointView.alpha = 0;
////        
////    }];
//}

#pragma mark - UIGestureRecognizerDelegate
- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldReceiveTouch:(UITouch *)touch
{
    // 如果点击tableViewCell则不截获点击事件
    if ([NSStringFromClass([touch.view class]) isEqualToString:@"UITableViewCellContentView"]) {
        //获取点击坐标
        touchPoint = [touch locationInView:self];
        NSLog(@"touchPoint:%f,%f",touchPoint.x,touchPoint.y);
        
        return NO;
    }
    
    return  YES;
}



@end

