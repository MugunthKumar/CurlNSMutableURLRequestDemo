//
//  SCTViewController.m
//  CurlNSMutableURLRequestDemo
//
//  Created by Mugunth on 26/7/13.
//  Copyright (c) 2013 Steinlogic Consulting and Training Pte Ltd. All rights reserved.
//

#import "SCTViewController.h"

@interface SCTViewController ()

@end

@implementation SCTViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
  NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:@"http://apple.com"]];
  NSString *bodyString = @"Hello World";
  NSData *data = [bodyString dataUsingEncoding:NSUTF8StringEncoding];
  [request setHTTPBody:data];
  request.HTTPMethod = @"POST";  
  NSLog(@"%@", request);
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
