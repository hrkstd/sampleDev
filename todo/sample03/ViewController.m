//
//  ViewController.m
//  sample03
//
//  Created by mac_h on 2014/05/22.
//  Copyright (c) 2014年 ___FULLUSERNAME___. All rights reserved.
//

#import "ViewController.h"

//@interface ViewController ()

//@end

@implementation ViewController 

-(id) init{
    if (self == [super init]) {
        NSLog(@"init");

    }
    return self;
}


int indexArr=0;
//NSMutableArray *arr01 = [NSMutableArray array];


- (void)viewDidLoad
{
    [super viewDidLoad];

    self.arr06 =[NSMutableArray arrayWithObjects: nil];
    self.tb01.dataSource=self;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
/*
-(IBAction)changeMethod:(id)sender
{

}
 */
//テーブル初期1
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    NSInteger dCount=[self.arr06 count];
    
    return dCount;
}
//テーブル初期2
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *tvcell=[tableView dequeueReusableCellWithIdentifier:@"cid"];
    if(tvcell==nil){
        tvcell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cid"];
        
    }
    
    //tvcell.textLabel.text=[[NSString alloc]initWithFormat:@"%d:",indexPath.row+1];
    tvcell.textLabel.text = [NSString stringWithFormat:@"%@",[self.arr06 objectAtIndex:indexPath.row]];
    return tvcell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    NSLog([self.arr06 objectAtIndex:[indexPath row]]);;
}

- (IBAction)btnPost:(id)postTask {
    self.str01=self.tf01.text;
    NSString *loString = @"--";
    loString = self.str01;
    
    if ([loString length] == 0) {
       loString = @"no_input";
    }

    
    
    //self.lb01.text=loString;


    [self.arr06 insertObject:loString atIndex:0];
    [self.tb01 reloadData];
    
    self.tf01.text=@"";
    
    
    
    //for debug
    NSLog(@"%d:%@",indexArr,self.arr06[indexArr]);
    
    for(int i=0;i<=indexArr;i++){
        NSLog(@"%d:%@",indexArr,self.arr06[i]);
    }
    
    
    //self.lb01.text=self.tf01.text;
    
    indexArr++;
}

- (IBAction)btnChangeEditable:(id)changeEditableMode {
    NSLog(@"changeEdit");
    [self.tb01 setEditing:YES animated:YES];
    if(self.tb01.editing==false){
        //[self.tb01 setEditing:YES animated:YES];
    }
    else{
     //[self.tb01 setEditing:NO animated:NO];
    }
}

- (BOOL)textFieldShouldReturn:(UITextField *)theTextField {
    if (theTextField == self.tf01) {//どのtfか判定
        [theTextField resignFirstResponder];
    }
    return YES;
}

@end
