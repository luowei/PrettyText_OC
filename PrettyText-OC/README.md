PrettyText-OC
=============
An Easier Way To Create NSAttributedString(富文本) in Objective-C!

[The Swift version of PrettyText](https://github.com/heartfly/PrettyText/)

## Usage

```objective-c
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
```

## Installation

```ruby
pod "PrettyText_OC", :git => "https://github.com/luowei/PrettyText_OC.git"
```

## Author

luowei, luowei@wodedata.com

## License

PrettyText-OC is available under the MIT license. See the LICENSE file for more info.