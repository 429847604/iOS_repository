//
//  MainVC.m
//  大众点评
//
//  Created by qianfeng on 3/29/15.
//  Copyright (c) 2015 张维. All rights reserved.
//


#import "MainVC.h"

@interface MainVC ()

@property (nonatomic, strong) UIScrollView *scrollView;
@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) UISearchBar *searchBar;

@end

@implementation MainVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self.view setBackgroundColor:[UIColor whiteColor]];
    //    self.navigationController.navigationBar.translucent = NO;
    [self.navigationController.navigationBar setTintColor:[UIColor orangeColor]];
    
    _tableView = [[UITableView alloc] initWithFrame:self.view.bounds];
    
    _scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 260)];
    _scrollView.contentSize = CGSizeMake(self.view.frame.size.width * 3, 0);
    _scrollView.pagingEnabled = YES;
    _scrollView.showsHorizontalScrollIndicator = NO;
    [self.view addSubview:_scrollView];
    
    UIView *first = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 180)];
    UIView *second = [[UIView alloc] initWithFrame:CGRectMake(self.view.frame.size.width, 0, self.view.frame.size.width, 180)];
    UIView *third = [[UIView alloc] initWithFrame:CGRectMake(self.view.frame.size.width * 2, 0, self.view.frame.size.width, 180)];
    
    [_scrollView addSubview:first];
    [_scrollView addSubview:second];
    [_scrollView addSubview:third];
    
    NSArray *arr1 = @[@"美食", @"小吃快餐", @"休闲娱乐", @"全部分类", @"团购", @"订酒店", @"订外卖", @"看电影"];
    NSArray *images1 = @[@"food_u@3x", @"snack_u@3x", @"bar_o@3x", @"more_o@3x", @"groupon_u@3x", @"hotel_u@3x", @"takeaway_u@3x", @"film_u@3x"];
    
    NSArray *arr2 = @[@"丽人", @"亲子", @"结婚", @"家装", @"订座", @"找优惠", @"有料", @"看演出"];
    NSArray *images2 = @[@"beauty@3x", @"baby@3x", @"marry@3x", @"jiazhuang@3x", @"booking_u@3x", @"discount_u@3x", @"topic_u@2x", @"coffee@3x"];
    
    NSArray *arr3 = @[@"足疗按摩", @"周边游", @"KTV", @"购物商场", @"会员卡", @"拍婚照", @"爱车", @""];
    NSArray *images3 = @[@"footer@3x", @"locate_u@3x", @"ktv_u@3x", @"shoppingmall@3x", @"vip@3x", @"marry_u@3x", @"book_menu_u@3x", @""];
    
    for (int i = 0; i < 2; i++) {
        for (int j = 0; j < arr1.count / 2; j++) {
            CGFloat witch = self.view.frame.size.width / 4;
            UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
            btn.frame = CGRectMake(witch * j, witch * i, witch, witch);
            [first addSubview:btn];
            
            if (i == 0) {
                [btn setTitle:arr1[j] forState:UIControlStateNormal];
                [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
                [btn setTitleColor:[UIColor redColor] forState:UIControlStateSelected];
                btn.titleLabel.font = [UIFont systemFontOfSize:12];
                [btn setImage:[UIImage imageNamed:images1[j]] forState:UIControlStateNormal];
                btn.imageEdgeInsets = UIEdgeInsetsMake(-24, 22, 0, 0);
                btn.titleEdgeInsets = UIEdgeInsetsMake(60, -42, 0, 0);
            } else {
                [btn setTitle:arr1[j + 4] forState:UIControlStateNormal];
                [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
                btn.titleLabel.font = [UIFont systemFontOfSize:12];
                [btn setImage:[UIImage imageNamed:images1[j + 4]] forState:UIControlStateNormal];
                btn.imageEdgeInsets = UIEdgeInsetsMake(-22, 22, 0, 0);
                btn.titleEdgeInsets = UIEdgeInsetsMake(57, -42, 0, 0);
            }
        }
    }
    
    for (int i = 0; i < 2; i++) {
        for (int j = 0; j < arr2.count / 2; j++) {
            CGFloat witch = self.view.frame.size.width / 4;
            UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
            btn.frame = CGRectMake(witch * j, witch * i, witch, witch);
            [second addSubview:btn];
            
            if (i == 0) {
                [btn setTitle:arr2[j] forState:UIControlStateNormal];
                [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
                [btn setTitleColor:[UIColor redColor] forState:UIControlStateSelected];
                btn.titleLabel.font = [UIFont systemFontOfSize:12];
                [btn setImage:[UIImage imageNamed:images2[j]] forState:UIControlStateNormal];
                btn.imageEdgeInsets = UIEdgeInsetsMake(-24, 22, 0, 0);
                btn.titleEdgeInsets = UIEdgeInsetsMake(60, -42, 0, 0);
            } else {
                [btn setTitle:arr2[j + 4] forState:UIControlStateNormal];
                [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
                btn.titleLabel.font = [UIFont systemFontOfSize:12];
                [btn setImage:[UIImage imageNamed:images2[j + 4]] forState:UIControlStateNormal];
                btn.imageEdgeInsets = UIEdgeInsetsMake(-22, 22, 0, 0);
                btn.titleEdgeInsets = UIEdgeInsetsMake(57, -42, 0, 0);
            }
        }
    }
    
    for (int i = 0; i < 2; i++) {
        for (int j = 0; j < 4; j++) {
            CGFloat witch = self.view.frame.size.width / 4;
            UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
            btn.frame = CGRectMake(witch * j, witch * i, witch, witch);
            [third addSubview:btn];
            
            if (i == 0) {
                [btn setTitle:arr3[j] forState:UIControlStateNormal];
                [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
                [btn setTitleColor:[UIColor redColor] forState:UIControlStateSelected];
                btn.titleLabel.font = [UIFont systemFontOfSize:12];
                [btn setImage:[UIImage imageNamed:images3[j]] forState:UIControlStateNormal];
                btn.imageEdgeInsets = UIEdgeInsetsMake(-24, 22, 0, 0);
                btn.titleEdgeInsets = UIEdgeInsetsMake(60, -42, 0, 0);
            } else {
                [btn setTitle:arr3[j + 4] forState:UIControlStateNormal];
                [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
                btn.titleLabel.font = [UIFont systemFontOfSize:12];
                [btn setImage:[UIImage imageNamed:images3[j + 4]] forState:UIControlStateNormal];
                btn.imageEdgeInsets = UIEdgeInsetsMake(-22, 22, 0, 0);
                btn.titleEdgeInsets = UIEdgeInsetsMake(57, -42, 0, 0);
            }
        }
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

@end
