//
//  ImageViewController.h
//  SystemImage_Bandana
//
//  Created by Bandana Choudhury on 05/06/17.
//  Copyright © 2017 Omniroid. All rights reserved.
//

#import <UIKit/UIKit.h>
@class ImageViewController;

@protocol munuDelegate <NSObject>

-(void)didSelectWith:(ImageViewController *)controller imagedat:(UIImage *)images imageName:(NSString *)imageName;
@end



@interface ImageViewController : UIViewController<UIImagePickerControllerDelegate,UINavigationControllerDelegate>
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UITextField *imageTF;
- (IBAction)imageAction:(id)sender;
- (IBAction)goToTV:(id)sender;
@property (strong, nonatomic) IBOutlet UIButton *imageBtn;
@property (nonatomic,weak)id<munuDelegate>delegate;



@end
