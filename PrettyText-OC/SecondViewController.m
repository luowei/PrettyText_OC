//
//  SecondViewController.m
//  PrettyText-OC
//
//  Created by luowei on 2017/3/8.
//  Copyright © 2017年 luowei. All rights reserved.
//

#import "SecondViewController.h"
#import "PrettyText_OC.h"
#import "NSString+HTML.h"

@interface SecondViewController ()
@property (weak, nonatomic) IBOutlet UITextView *textView;

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    NSString *html = [NSString stringWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"Test" ofType:@"html"] encoding:NSUTF8StringEncoding error:nil];
    self.textView.attributedText = [html HTMLAttributedString];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
