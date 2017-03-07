//
//  ViewController.m
//  PrettyText-OC
//
//  Created by luowei on 2017/3/7.
//  Copyright © 2017年 luowei. All rights reserved.
//

#import "ViewController.h"
#import "NSString+PrettyText.h"
#import "NSMutableAttributedString+PrettyText.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UITextView *textView;
@property (weak, nonatomic) IBOutlet UITextField *textField;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    // ---- label ---
    NSString *labelText = @"Do any additional setup after loading the view, typically from a nib.";
    NSMutableAttributedString *attLabelText = [labelText pt_color:[UIColor greenColor]];
    [attLabelText pt_backgroundColor:[UIColor brownColor]];
    [attLabelText pt_backgroundColor:[UIColor brownColor]];
    [attLabelText pt_backgroundColor:[UIColor brownColor]];

    [attLabelText pt_color:[UIColor redColor] range:NSMakeRange(3, 3)];

    NSRange range = [labelText rangeOfString:@"additional"];
    [attLabelText pt_color:[UIColor blueColor] range:range];

    self.label.attributedText = attLabelText;

    //---- textView ----
    NSString *text = @"Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.";

    NSString *subText = @"Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu";
    NSRange subRange = [text rangeOfString:subText];
    NSMutableAttributedString *attText = [text pt_backgroundColor:[UIColor whiteColor] range:subRange];
    [attText pt_font:[UIFont systemFontOfSize:24] range:[subText rangeOfString:@"Lorem"] ];

    NSRange subRange2 = [text rangeOfString:@"consectetaur"];
    [attText pt_addAttributesWithRange:subRange2
                                 block:^(LWPrettyTextMaker *maker) {
                                     [maker pt_font:[UIFont systemFontOfSize:20]];
                                     [maker pt_color:[UIColor whiteColor]];
                                     [maker pt_backgroundColor:[UIColor blackColor]];
                                     [maker pt_writingDirection:@[@(NSWritingDirectionRightToLeft)]];
                                 }];

    [attText pt_addAttributesWithBlock:^(LWPrettyTextMaker *maker) {
        NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
        [paragraphStyle setFirstLineHeadIndent:40];
        [maker pt_paragraphStyle:paragraphStyle];
    }];

    self.textView.attributedText = attText;

    self.textField.attributedText = [@"aaaa bbbb cccc" pt_color:[UIColor greenColor] subString:@"bbbb"];


}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
