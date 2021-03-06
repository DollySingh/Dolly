//
//  TableViewController.m
//  UIDEMO
//
//  Created by Student-006 on 29/09/16.
//  Copyright © 2016 Felix. All rights reserved.
//

#import "TableViewController.h"
#import "colorViewController.h"

@interface TableViewController ()

@end

@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
   
   _table=[[UITableView alloc]initWithFrame:[UIScreen mainScreen].bounds style:UITableViewStyleGrouped];
   _table.delegate=self;
   _table.dataSource=self;
   [self.view addSubview:_table];
   
   _cityarray=[[NSMutableArray alloc]initWithObjects:@"pune",@"Nashik",@"Mumbai",@"chennai",@"Banglore",@"Delhi",@"Kolkata", nil];
   
   _colorarray=[[NSMutableArray alloc]initWithObjects:@"red",@"blue",@"yellow",@"green",@"gray",@"White",@"cyan",@"brown",@"orange", nil];
   
   [self.table registerClass:[UITableViewCell  class] forCellReuseIdentifier:@"cell"];
   
   
   
   
   self.navigationItem.title=@"4VC";
   
   UIBarButtonItem *rbtn= [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(rbtnclick)];
   self.navigationItem .rightBarButtonItem =rbtn;
   
}
-(void)rbtnclick
{
   colorViewController * cvc=[[colorViewController alloc] init];
   [self.navigationController pushViewController:cvc animated:YES];
}


-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
   return 2;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
   if(section==0)
     return _cityarray.count ;
   else
    return  _colorarray.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
   //UITableViewCell *cell= [[UITableViewCell alloc]initWithStyle:
   //                        UITableViewCellStyleDefault reuseIdentifier:nil];
   
   UITableViewCell *cell= [tableView dequeueReusableCellWithIdentifier :@"cell" forIndexPath:indexPath];
   
   if(indexPath.section==0)
   {
      cell.textLabel.text=[_cityarray objectAtIndex:indexPath.row];
      cell.accessoryType= UITableViewCellAccessoryDisclosureIndicator;
   }
   else
   {
      cell.textLabel.text=[_colorarray objectAtIndex:indexPath.row];
      UISwitch *s= [[UISwitch alloc] init];
      cell.accessoryView =s;
   }
   
//   cell.imageView.image=[UIImage imageNamed:@"3"];
//   cell.textLabel.text=@"Test";
//   cell.detailTextLabel.text= @"Detail Text";
     return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
   if(indexPath.section==0)
   {
      NSString *tempcityname=[_cityarray objectAtIndex:indexPath.row];
     
      UIAlertView *alert = [[UIAlertView alloc]initWithTitle:tempcityname message:@"selected" delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles:@"OK", nil];
      
      [alert show];
   }
   else
   {
      NSString *tempcityname=[_colorarray objectAtIndex:indexPath.row];
      
      UIAlertView *alert = [[UIAlertView alloc]initWithTitle:tempcityname message:@"selected" delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles:@"OK", nil];
      
      [alert show];
   }
}

-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
   if(section==0)
      return @"This is city array";
   else
      return @"This is color array";
}

-(NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section
{
   if(section==0)
      return @"This is end of city array";
   else
      return @"This is end of color array";
}

-(UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
   UIImageView *i=[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"3"]];
   return i;
}

-(UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section
{
   UISegmentedControl *s=[[UISegmentedControl alloc] initWithItems:[NSArray arrayWithObjects:@"A", @"B",@"C",@"D", nil]];
   return s;
}

-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
   return 150;
}

-(CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
   return 150;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
   return  50;
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
