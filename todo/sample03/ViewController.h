//
//  ViewController.h
//  sample03
//
//  Created by mac_h on 2014/05/22.
//  Copyright (c) 2014年 ___FULLUSERNAME___. All rights reserved.
//

#import <UIKit/UIKit.h>

//member
//@interface ViewController : UIViewController

@interface ViewController : UIViewController <UITableViewDataSource,UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UILabel *lb01;
@property (weak, nonatomic) IBOutlet UITextField *tf01;
@property (copy, nonatomic) NSString *str01;


@property IBOutlet UITableView *tb01;

@property NSMutableArray* arr06;

//Method
- (IBAction)ActBt:(id)sender;
- (id)init;

@end
