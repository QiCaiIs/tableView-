//
//  BigTableViewCell.m
//  tableView弹窗
//
//  Created by apple on 15/12/21.
//  Copyright © 2015年 奇才. All rights reserved.
//

#import "BigTableViewCell.h"

@implementation BigTableViewCell

- (void)awakeFromNib {
    // Initialization code
}
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.nameLabel = [[UILabel alloc]init];
        self.nameLabel.textColor = [UIColor colorWithRed:231/255.0 green:70/255.0 blue:54/255.0 alpha:1];
        [self.contentView addSubview:self.nameLabel];
        self.bigView = [[UIView alloc]init];
        self.bigView.backgroundColor = [UIColor colorWithRed:231/255.0 green:70/255.0 blue:54/255.0 alpha:1];
        self.bigView.alpha = .8;
        self.bigView.hidden = YES;
        [self.contentView addSubview:self.bigView];
    }
    return self;
}
- (void)layoutSubviews{
    [super layoutSubviews];
  
    self.nameLabel.frame = CGRectMake(30, 20, self.contentView.bounds.size.width-60, 40);
    self.bigView.frame = CGRectMake(0, 60, self.contentView.bounds.size.width, 240);
}
- (void)didSeledeIndex:(BOOL)hidden
{
    if (hidden) {
        self.bigView.hidden = NO;

    }
}
- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
