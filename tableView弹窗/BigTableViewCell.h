//
//  BigTableViewCell.h
//  tableView弹窗
//
//  Created by apple on 15/12/21.
//  Copyright © 2015年 奇才. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BigTableViewCell : UITableViewCell
@property (nonatomic, strong) UILabel *nameLabel;
@property (nonatomic, strong) UIView *bigView;

- (void)didSeledeIndex:(BOOL)hidden;
@end
