//
//  ImageViewController.m
//  SystemImage_Bandana
//
//  Created by Bandana Choudhury on 05/06/17.
//  Copyright © 2017 Omniroid. All rights reserved.
//

#import "ImageViewController.h"


@interface ImageViewController (){
    
    
    UIImagePickerController * imagePickerController;
    UIImage * profileImage;
    
}


@end

@implementation ImageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void) imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info
{
    if (picker == imagePickerController)
    {
        profileImage = [info objectForKey:UIImagePickerControllerOriginalImage];
        [self.imageBtn setBackgroundImage:profileImage forState:UIControlStateNormal];
        
        
    }
    [self dismissViewControllerAnimated:YES completion:NULL];
    

    }


// In a storyboard-based application, you will often want to do a little preparation before navigation
//- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
//    [self.delegate didSelectWith:self imageName:self.imageTF.text];
//}


- (IBAction)imageAction:(id)sender {
    
    imagePickerController = [[UIImagePickerController alloc]init];
    imagePickerController.delegate = self;
    imagePickerController.sourceType =  UIImagePickerControllerSourceTypePhotoLibrary;
    [self presentViewController:imagePickerController animated:YES completion:nil];}

- (IBAction)goToTV:(id)sender {
    [self.delegate didSelectWith:self imagedat:profileImage imageName:self.imageTF.text];
    [self.navigationController popViewControllerAnimated:YES];


}
@end
