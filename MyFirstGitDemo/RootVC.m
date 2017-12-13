
//
//  RootVC.m
//  MyFirstGitDemo
//
//  Created by Renpengfei on 2017/11/9.
//  Copyright © 2017年 Renpengfei. All rights reserved.
//

#import "RootVC.h"

@implementation RootVC
{
    NSMutableArray *_dataArr;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"test";
    [self dataConfig];
    [self showUI];
    //top默认是0 大于0 向下偏移安全区域 反之向上
    //bottom默认是0 大于0向上偏移 小于0向下偏移
    /*
     对于额外的safe area 可以在iOS11上测试vc的属性additionalSafeAreaInsets
     这个属性中可以设置安全区域的大小
     //竖屏
     additionalSafeAreaInsets.top = 24.0
     additionalSafeAreaInsets.bottom = 34.0
     //竖屏, status bar 隐藏
     additionalSafeAreaInsets.top = 44.0
     additionalSafeAreaInsets.bottom = 34.0
     */
    //所以用模拟器都是最新的
    if (@available(iOS 11.0, *)) {
        self.additionalSafeAreaInsets = UIEdgeInsetsMake(0, 0, -30, 0);
    } else {
        // Fallback on earlier versions
    }
    /*
     不管是tableView还是collectionView还是scrollView
     scrollView的contentInsetAdjustmentBehavior 是自动设置
     */
    
    
}

-(void)dataConfig{
    _dataArr = [[NSMutableArray alloc] init];
    for (int i = 0; i<30; i++) {
        [_dataArr addObject:[NSString stringWithFormat:@"%d",i]];
    }
}

-(void)showUI{
    [_tabTest reloadData];
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return _dataArr.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *cellID = @"cellID";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellID];
    }
    cell.textLabel.text = _dataArr[indexPath.row];
    return cell;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
