//
//  ViewController.m
//  RemoveObjectsForKeySample
//
//  Created by Dolice on 2013/04/10.
//  Copyright (c) 2013年 Dolice. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
  [super viewDidLoad];
	[self main];
}

- (void)didReceiveMemoryWarning
{
  [super didReceiveMemoryWarning];
}

- (void)main
{
  //辞書を生成する
  NSMutableDictionary *dic;
  dic = [NSMutableDictionary dictionaryWithObjectsAndKeys:
         @"Apple", @"@Key1",
         @"Banana", @"@Key2",
         @"Orange", @"@Key3",
         @"Lemon", @"@Key4",
         @"Greaps", @"@Key5",
         nil];
  
  //削除するための配列を生成する
  NSArray *keysArray;
  keysArray = [NSArray arrayWithObjects:
               @"Key3", @"Key4", nil];
  [dic removeObjectsForKeys:keysArray];
  
  NSLog(@"dic: %@", dic);
}

@end
