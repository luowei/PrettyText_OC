//
// Created by luowei on 2017/3/7.
// Copyright (c) 2017 luowei. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface LWPrettyTextMaker : NSObject


@property(nonatomic, strong, readonly) NSMutableAttributedString *prettyText;

@property(nonatomic) NSRange range;
@property(nonatomic, strong) NSMutableAttributedString *attributedString;

@property(nonatomic, strong) NSMutableDictionary<NSString *,id> *attributes;

- (instancetype)initWithString:(NSString *)string range:(NSRange)range;
- (instancetype)initWithAttributedString:(NSMutableAttributedString *)attributedString range:(NSRange)range;

-(LWPrettyTextMaker *)pt_attribute:(NSString *)attributeName value:(id)value;

-(LWPrettyTextMaker *)pt_paragraphStyle:(NSParagraphStyle *)style;
-(LWPrettyTextMaker *)pt_font:(UIFont *)font;
-(LWPrettyTextMaker *)pt_color:(UIColor *)color;
-(LWPrettyTextMaker *)pt_backgroundColor:(UIColor *)color;
-(LWPrettyTextMaker *)pt_ligature:(BOOL)ligature;
-(LWPrettyTextMaker *)pt_kern:(NSInteger)space;
-(LWPrettyTextMaker *)pt_strikethroughStyle:(NSUnderlineStyle)style;
-(LWPrettyTextMaker *)pt_strikethroughColor:(UIColor *)color;
-(LWPrettyTextMaker *)pt_underlineStyle:(NSUnderlineStyle)style;
-(LWPrettyTextMaker *)pt_underlineColor:(UIColor *)color;
-(LWPrettyTextMaker *)pt_strokeColor:(UIColor *)color;
-(LWPrettyTextMaker *)pt_strokeWidth:(CGFloat)width;
-(LWPrettyTextMaker *)pt_shadow:(NSShadow *)shadow;
-(LWPrettyTextMaker *)pt_textEffect:(NSString *)string;
-(LWPrettyTextMaker *)pt_attachment:(NSTextAttachment *)attachment;
-(LWPrettyTextMaker *)pt_link:(NSURL *)url;
-(LWPrettyTextMaker *)pt_baselineOffset:(CGFloat)offset;
-(LWPrettyTextMaker *)pt_obliqueness:(CGFloat)obliqueness;
-(LWPrettyTextMaker *)pt_expansion:(CGFloat)expansion;
-(LWPrettyTextMaker *)pt_writingDirection:(NSArray<NSNumber *> *)direction;
-(LWPrettyTextMaker *)pt_verticalGlyphForm:(NSInteger)form;

-(LWPrettyTextMaker *)pt_lineSpacing:(CGFloat)space;

@end