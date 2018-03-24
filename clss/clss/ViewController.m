//
//  ViewController.m
//  clss
//
//  Created by 崔林豪 on 2018/3/5.
//  Copyright © 2018年 崔林豪. All rights reserved.
//

#import "ViewController.h"
#import "TNSon.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    TNSon *ss = [[TNSon alloc] init];
    NSLog(@"=====%@", ss);
    
    //1. 创建并发队列
    dispatch_queue_t queue = dispatch_queue_create("myQueue", DISPATCH_QUEUE_CONCURRENT);
    //2. 向队列中添加任务
    dispatch_async(queue, ^{
        NSLog(@"任务1， %@", [NSThread currentThread]);
    });
    
    dispatch_async(queue, ^{
        NSLog(@"任务2， %@", [NSThread currentThread]);
    });
    
    dispatch_barrier_async(queue, ^{
        NSLog(@"任务 barrier， %@", [NSThread currentThread]);
    });
    //skdfjdskfksldfkjsd
//    NSSortDescriptor
    dispatch_async(queue, ^{
        NSLog(@"任务3， %@", [NSThread currentThread]);
    });
    
    dispatch_async(queue, ^{
        NSLog(@"任务4， %@", [NSThread currentThread]);
    });
    
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
