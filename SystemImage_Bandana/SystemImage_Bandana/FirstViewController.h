//
//  FirstViewController.h
//  SystemImage_Bandana
//
//  Created by Bandana Choudhury on 07/06/17.
//  Copyright © 2017 Omniroid. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ImageViewController.h"

@interface FirstViewController : UIViewController<UITableViewDelegate,UITableViewDataSource,munuDelegate>
@property (weak, nonatomic) IBOutlet UITableView *myTableView;
@property (nonatomic,weak)id<munuDelegate>delegate;
- (IBAction)gotoSecondVIew:(id)sender;

@end
