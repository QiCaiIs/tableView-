//
//  ViewController.m
//  tableView弹窗
//
//  Created by apple on 15/12/21.
//  Copyright © 2015年 奇才. All rights reserved.
//

#import "ViewController.h"
#import "BigTableViewCell.h"
@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (nonatomic, strong) UITableView *tableView;
@end

@implementation ViewController
{
    NSMutableArray *array;
    NSMutableArray *viewArray;
    NSInteger indexNum;
    CGFloat HLineNum;
    CGFloat WLineNum;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    indexNum = -1;
    UIImageView *clearImageView = [[UIImageView alloc]initWithFrame:self.view.bounds];
    clearImageView.image = [UIImage imageNamed:@"1.jpg"];
    [self.view addSubview:clearImageView];
    
    array = [NSMutableArray arrayWithObjects:@"北京",@"火影忍者",@"足球小子",@"超人",@"葫芦娃大战蜘蛛精",@"super man",@"welcome to china",@"上海",@"海贼王",@"会说话的汤姆猫",@"大头儿子小头爸爸",@"少林足球",@"妖精的尾巴",@"咸蛋超人",@"蜘蛛侠",@"葫芦娃",@"北京",@"火影忍者",@"足球小子",@"超人",@"葫芦娃大战蜘蛛精",@"super man",@" man",@"胡商客贩",@"三方科技",@"阿萨德",@"大丰收",@"泰国奋斗",@"雍和宫",@"大法官",nil];
    
    viewArray = [NSMutableArray arrayWithObjects:@"北京",@"火影忍者",@"足球小子",@"超人",@"葫芦娃大战蜘蛛精",@"super man",@"welcome to china",@"上海",@"海贼王",@"会说话的汤姆猫",nil];
    
    
    self.tableView = [[UITableView alloc]initWithFrame:self.view.bounds style:UITableViewStylePlain];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
      self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    self.tableView.bounces = NO;
    self.tableView.showsVerticalScrollIndicator = NO;
    self.tableView.backgroundColor = [UIColor clearColor];
    [self.view addSubview:self.tableView];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return array.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    BigTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"qwe"];
    cell = [[BigTableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"qwe"];
    cell.backgroundColor = [UIColor clearColor];
    cell.nameLabel.text = [array objectAtIndex:indexPath.row];
    [cell didSeledeIndex:indexPath.row == indexNum ? YES : NO];
    
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
     [self.tableView deselectRowAtIndexPath:indexPath animated:NO];
    if (indexPath.row == indexNum ) {
        return;
    }else{
    indexNum = indexPath.row;
    [self.tableView reloadData];
    }
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
//    BigTableViewCell *cell = [self.tableView cellForRowAtIndexPath:indexPath];
    if (indexPath.row == indexNum ? YES : NO) {
        return 300;
    }else{
    return 80;
    }
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
