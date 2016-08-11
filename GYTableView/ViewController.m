//
//  ViewController.m
//  GYTableView
//
//  Created by 黄国裕 on 16/8/11.
//  Copyright © 2016年 黄国裕. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UIGestureRecognizerDelegate,UITableViewDelegate,UITableViewDataSource>
{
    UITableView *MyTableView;
    CGPoint touchPoint;//触摸tableview位置

}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    MyTableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height) style:UITableViewStylePlain];
    MyTableView.delegate = self;
    MyTableView.dataSource = self;
    [self setExtraCellLineHidden:MyTableView];
    [self.view addSubview:MyTableView];
    
    UITapGestureRecognizer *oneTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:nil];
    oneTap.delegate = self;
    oneTap.numberOfTouchesRequired = 1;
    [MyTableView addGestureRecognizer:oneTap];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - UITableview datasource
//一共有多少个section分区
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

//第section分区一共有多少行
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 30;
}

//分区中某一行的高度
-(CGFloat)tableView:(UITableView*)tableView heightForRowAtIndexPath:(nonnull NSIndexPath *)indexPath
{
    return 78;
}


//创建第section分区第row行的UITableViewCell对象(indexPath包含了section和row)
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    static NSString * CellIdentifier = @"Cell";
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) { // Create a cell to display an ingredient.
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:CellIdentifier];
    }

    [cell setSelectionStyle:UITableViewCellSelectionStyleNone];//设置不使用原生点击效果
    cell.textLabel.text = @"GY_TableView";
    
    UIImageView *PointView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"clickLoop"]];
    PointView.tag = 100;
    PointView.alpha = 0;
    [cell addSubview:PointView];
    cell.clipsToBounds = YES;

    return cell;
}

#pragma mark - UITableview Delegate
//tableview被单击选中响应事件
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
//    [NSThread sleepForTimeInterval:0.2];
}

- (void)tableView:(UITableView *)tableView didHighlightRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"触摸一下");

    UITableViewCell *cell = [MyTableView  cellForRowAtIndexPath:[NSIndexPath indexPathForRow:[indexPath row] inSection:indexPath.section]];

    UIImageView *PointView = [cell viewWithTag:100];

    CGPoint thePoint = [MyTableView convertPoint:touchPoint toView:cell];
    NSLog(@"%.2f   %.2f",touchPoint.x,touchPoint.y);
    PointView.frame = CGRectMake(thePoint.x - 5, thePoint.y - 5, 10, 10);

    PointView.alpha = 1;
    
    [UIView animateWithDuration:0.5 animations:^{

        CGFloat radius = sqrt(pow(CGRectGetWidth(cell.bounds), 2) + pow(CGRectGetHeight(cell.bounds), 2));
        PointView.frame = CGRectMake(thePoint.x - radius, thePoint.y - radius, 2 * radius, 2 * radius);

    }completion:^(BOOL finished) {


    }];
}

- (void)tableView:(UITableView *)tableView didUnhighlightRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"松开");
    UITableViewCell *cell = [MyTableView cellForRowAtIndexPath:[NSIndexPath indexPathForRow:[indexPath row] inSection:indexPath.section]];
    UIImageView *PointView = [cell viewWithTag:100];
    [UIView animateWithDuration:0.8 animations:^{

        PointView.alpha = 0;

    }];
}


#pragma mark - UIGestureRecognizerDelegate
- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldReceiveTouch:(UITouch *)touch
{
    // 如果点击tableViewCell则不截获点击事件
    if ([NSStringFromClass([touch.view class]) isEqualToString:@"UITableViewCellContentView"]) {
        //获取点击坐标
        touchPoint = [touch locationInView:MyTableView];
        NSLog(@"touchPoint:%f,%f",touchPoint.x,touchPoint.y);
        
        return NO;
    }
    
    return  YES;
}


- (void)setExtraCellLineHidden: (UITableView *)tableView
{
    //隐藏空白区域的线条
    UIView *view = [[UIView alloc] init];
    view.backgroundColor = [UIColor clearColor];
    [tableView setTableFooterView:view];
}

@end
