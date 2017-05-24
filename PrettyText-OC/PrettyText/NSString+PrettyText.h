//
// Created by luowei on 2017/3/7.
// Copyright (c) 2017 luowei. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LWPrettyTextMaker.h"

@interface NSString (PrettyText)

-(NSMutableAttributedString *)pt_attribute:(NSString *)attributeName value:(id)value;
-(NSMutableAttributedString *)pt_addAttributesWithBlock:(void(^)(LWPrettyTextMaker *))makerBlock;

-(NSMutableAttributedString *)pt_paragraphStyle:(NSParagraphStyle *)style;
-(NSMutableAttributedString *)pt_font:(UIFont *)font;
-(NSMutableAttributedString *)pt_color:(UIColor *)color;
-(NSMutableAttributedString *)pt_backgroundColor:(UIColor *)color;
-(NSMutableAttributedString *)pt_ligature:(BOOL)ligature;
-(NSMutableAttributedString *)pt_kern:(NSInteger)space;
-(NSMutableAttributedString *)pt_strikethroughStyle:(NSUnderlineStyle)style;
-(NSMutableAttributedString *)pt_strikethroughColor:(UIColor *)color;
-(NSMutableAttributedString *)pt_underlineStyle:(NSUnderlineStyle)style;
-(NSMutableAttributedString *)pt_underlineColor:(UIColor *)color;
-(NSMutableAttributedString *)pt_strokeColor:(UIColor *)color;
-(NSMutableAttributedString *)pt_strokeWidth:(CGFloat)width;
-(NSMutableAttributedString *)pt_shadow:(NSShadow *)shadow;
-(NSMutableAttributedString *)pt_textEffect:(NSString *)string;
-(NSMutableAttributedString *)pt_attachment:(NSTextAttachment *)attachment;
-(NSMutableAttributedString *)pt_link:(NSURL *)url;
-(NSMutableAttributedString *)pt_baselineOffset:(CGFloat)offset;
-(NSMutableAttributedString *)pt_obliqueness:(CGFloat)obliqueness;
-(NSMutableAttributedString *)pt_expansion:(CGFloat)expansion;
-(NSMutableAttributedString *)pt_writingDirection:(NSArray<NSNumber *> *)direction;
-(NSMutableAttributedString *)pt_verticalGlyphForm:(NSInteger)form;

-(NSMutableAttributedString *)pt_lineSpacing:(CGFloat)space;

- (NSMutableAttributedString *)pt_color:(UIColor *)color subString:(NSString *)subString;
- (NSMutableAttributedString *)pt_font:(UIFont *)font subString:(NSString *)subString;

#pragma mark - With Range

-(NSMutableAttributedString *)pt_attribute:(NSString *)attributeName value:(id)value range:(NSRange)range;
-(NSMutableAttributedString *)pt_addAttributesWithRange:(NSRange)range block:(void(^)(LWPrettyTextMaker *))makerBlock;

-(NSMutableAttributedString *)pt_paragraphStyle:(NSParagraphStyle *)style range:(NSRange)range;
-(NSMutableAttributedString *)pt_font:(UIFont *)font range:(NSRange)range;
-(NSMutableAttributedString *)pt_color:(UIColor *)color range:(NSRange)range;
-(NSMutableAttributedString *)pt_backgroundColor:(UIColor *)color range:(NSRange)range;
-(NSMutableAttributedString *)pt_ligature:(BOOL)ligature range:(NSRange)range;
-(NSMutableAttributedString *)pt_kern:(NSInteger)space range:(NSRange)range;
-(NSMutableAttributedString *)pt_strikethroughStyle:(NSUnderlineStyle)style range:(NSRange)range;
-(NSMutableAttributedString *)pt_strikethroughColor:(UIColor *)color range:(NSRange)range;
-(NSMutableAttributedString *)pt_underlineStyle:(NSUnderlineStyle)style range:(NSRange)range;
-(NSMutableAttributedString *)pt_underlineColor:(UIColor *)color range:(NSRange)range;
-(NSMutableAttributedString *)pt_strokeColor:(UIColor *)color range:(NSRange)range;
-(NSMutableAttributedString *)pt_strokeWidth:(CGFloat)width range:(NSRange)range;
-(NSMutableAttributedString *)pt_shadow:(NSShadow *)shadow range:(NSRange)range;
-(NSMutableAttributedString *)pt_textEffect:(NSString *)string range:(NSRange)range;
-(NSMutableAttributedString *)pt_attachment:(NSTextAttachment *)attachment range:(NSRange)range;
-(NSMutableAttributedString *)pt_link:(NSURL *)url range:(NSRange)range;
-(NSMutableAttributedString *)pt_baselineOffset:(CGFloat)offset range:(NSRange)range;
-(NSMutableAttributedString *)pt_obliqueness:(CGFloat)obliqueness range:(NSRange)range;
-(NSMutableAttributedString *)pt_expansion:(CGFloat)expansion range:(NSRange)range;
-(NSMutableAttributedString *)pt_writingDirection:(NSArray<NSNumber *> *)direction range:(NSRange)range;
-(NSMutableAttributedString *)pt_verticalGlyphForm:(NSInteger)form range:(NSRange)range;

-(NSMutableAttributedString *)pt_lineSpacing:(CGFloat)space range:(NSRange)range;

@end