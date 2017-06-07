//
//  FirstViewController.m
//  SystemImage_Bandana
//
//  Created by Bandana Choudhury on 07/06/17.
//  Copyright © 2017 Omniroid. All rights reserved.
//

#import "FirstViewController.h"


@interface FirstViewController ()
@property (nonatomic, strong) NSMutableArray *nameArr,*imagesArray;


@end

@implementation FirstViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    self.imagesArray = [[NSMutableArray alloc]init];
    self.nameArr = [[NSMutableArray alloc]init];
    
    self.myTableView.delegate = self;
    self.myTableView.dataSource = self;
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return self.nameArr.count;
}
-(void)didSelectWith:(ImageViewController *)controller imagedat:(UIImage *)images imageName:(NSString *)imageName{
     NSLog(@"asdawasxczzdf");
    [self.nameArr addObject:imageName];
    [self.imagesArray addObject:images];

    [self.myTableView reloadData];
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    cell.textLabel.text = self.nameArr[indexPath.row];
    cell.imageView.image = self.imagesArray[indexPath.row];
    return cell;
}

- (IBAction)gotoSecondVIew:(id)sender {
    
    ImageViewController *gotoSecondVC = [self.storyboard instantiateViewControllerWithIdentifier:@"SecondViewController"];
    
    gotoSecondVC.delegate = self;
    [self.navigationController pushViewController:gotoSecondVC animated:YES];
    
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
