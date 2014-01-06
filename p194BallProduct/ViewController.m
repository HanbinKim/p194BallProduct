//
//  ViewController.m
//  p194StaticCell
//
//  Created by SDT-1 on 2014. 1. 6..
//  Copyright (c) 2014년 SDT-1. All rights reserved.
//

#import "ViewController.h"
#import "ProductCell.h"
#import "Product.h"
#define PRODUCT_CELL @"PRODUCT_CELL"

@interface ViewController ()
<UITableViewDelegate, UITableViewDataSource>
{
    NSArray *data;
}

@end

@implementation ViewController

- (NSInteger) tableView: (UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [data count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    ProductCell *cell = [tableView dequeueReusableCellWithIdentifier:@"PRODUCT_CELL" forIndexPath:indexPath];
    
    Product *item = data[indexPath.row];
    [cell setProductInfo:item];
    
    return cell;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    data = @[[Product product:@"car1" price:@"100" image:@"car1.png"],
             [Product product:@"car2" price:@"200" image:@"car2.png"],
             [Product product:@"car3" price:@"250" image:@"car3.png"],
             [Product product:@"car4" price:@"300" image:@"car4.png"],
             [Product product:@"car5" price:@"999" image:@"car5.png"]];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
