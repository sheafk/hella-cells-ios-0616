//
//  FISHellaDetailViewController.m
//  HellaCells
//
//  Created by Shea Furey-King on 6/22/16.
//  Copyright © 2016 FIS. All rights reserved.
//

#import "FISHellaDetailViewController.h"

@interface FISHellaDetailViewController ()

@property (weak, nonatomic) IBOutlet UILabel *bigNumber;


@end

@implementation FISHellaDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.bigNumber.text = [NSString stringWithFormat:@"%@", self.bigNumber];
    
    // Do any additional setup after loading the view.
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
