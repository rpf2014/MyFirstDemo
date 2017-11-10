//
//  RootVC.h
//  MyFirstGitDemo
//
//  Created by Renpengfei on 2017/11/9.
//  Copyright © 2017年 Renpengfei. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RootVC : UIViewController<UITableViewDelegate,UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tabTest;

@end
