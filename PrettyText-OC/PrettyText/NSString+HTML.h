//
// Created by luowei on 2017/3/8.
// Copyright (c) 2017 luowei. All rights reserved.
//
//
/*
添加文本链接处理参考：
Create tap-able “links” in the NSAttributedText of a UILabel?
http://stackoverflow.com/questions/1256887/create-tap-able-links-in-the-nsattributedtext-of-a-uilabel
*/



#import <UIKit/UIKit.h>

@interface NSString (HTML)

-(NSMutableAttributedString *)HTMLAttributedString;

@end