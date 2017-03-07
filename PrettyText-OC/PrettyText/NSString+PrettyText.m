//
// Created by luowei on 2017/3/7.
// Copyright (c) 2017 luowei. All rights reserved.
//

#import "NSString+PrettyText.h"

@implementation NSString (PrettyText)

-(NSMutableAttributedString *)pt_attribute:(NSString *)attributeName value:(id)value{
    return [self pt_attribute:attributeName value:value range:NSMakeRange(0, [self length])];
}
-(NSMutableAttributedString *)pt_addAttributesWithBlock:(void(^)(LWPrettyTextMaker *))makerBlock{
    return [self pt_addAttributesWithRange:NSMakeRange(0, [self length]) block:makerBlock];
}

-(NSMutableAttributedString *)pt_paragraphStyle:(NSParagraphStyle *)style{
    return [self pt_paragraphStyle:style range:NSMakeRange(0, [self length])];
}

-(NSMutableAttributedString *)pt_font:(UIFont *)font{
    return [self pt_font:font range:NSMakeRange(0, [self length])];
}

-(NSMutableAttributedString *)pt_color:(UIColor *)color{
    return [self pt_color:color range:NSMakeRange(0, [self length])];
}
-(NSMutableAttributedString *)pt_backgroundColor:(UIColor *)color{
    return [self pt_backgroundColor:color range:NSMakeRange(0, [self length])];
}
-(NSMutableAttributedString *)pt_ligature:(BOOL)ligature{
    return [self pt_ligature:ligature range:NSMakeRange(0, [self length])];
}
-(NSMutableAttributedString *)pt_kern:(NSInteger)space{
    return [self pt_kern:space range:NSMakeRange(0, [self length])];
}
-(NSMutableAttributedString *)pt_strikethroughStyle:(NSUnderlineStyle)style{
    return [self pt_strikethroughStyle:style range:NSMakeRange(0, [self length])];
}
-(NSMutableAttributedString *)pt_strikethroughColor:(UIColor *)color{
    return [self pt_strikethroughColor:color range:NSMakeRange(0, [self length])];
}
-(NSMutableAttributedString *)pt_underlineStyle:(NSUnderlineStyle)style{
    return [self pt_underlineStyle:style range:NSMakeRange(0, [self length])];
}
-(NSMutableAttributedString *)pt_underlineColor:(UIColor *)color{
    return [self pt_underlineColor:color range:NSMakeRange(0, [self length])];
}
-(NSMutableAttributedString *)pt_strokeColor:(UIColor *)color{
    return [self pt_strokeColor:color range:NSMakeRange(0, [self length])];
}
-(NSMutableAttributedString *)pt_strokeWidth:(CGFloat)width{
    return [self pt_strokeWidth:width range:NSMakeRange(0, [self length])];
}
-(NSMutableAttributedString *)pt_shadow:(NSShadow *)shadow {
    return [self pt_shadow:shadow range:NSMakeRange(0, [self length])];
}
-(NSMutableAttributedString *)pt_textEffect:(NSString *)string{
    return [self pt_textEffect:string range:NSMakeRange(0, [self length])];
}
-(NSMutableAttributedString *)pt_attachment:(NSTextAttachment *)attachment{
    return [self pt_attachment:attachment range:NSMakeRange(0, [self length])];
}
-(NSMutableAttributedString *)pt_link:(NSURL *)url{
    return [self pt_link:url range:NSMakeRange(0, [self length])];
}
-(NSMutableAttributedString *)pt_baselineOffset:(CGFloat)offset{
    return [self pt_baselineOffset:offset range:NSMakeRange(0, [self length])];
}
-(NSMutableAttributedString *)pt_obliqueness:(CGFloat)obliqueness{
    return [self pt_obliqueness:obliqueness range:NSMakeRange(0, [self length])];
}
-(NSMutableAttributedString *)pt_expansion:(CGFloat)expansion{
    return [self pt_expansion:expansion range:NSMakeRange(0, [self length])];
}
-(NSMutableAttributedString *)pt_writingDirection:(NSArray<NSNumber *> *)direction{
    return [self pt_writingDirection:direction range:NSMakeRange(0, [self length])];
}
-(NSMutableAttributedString *)pt_verticalGlyphForm:(NSInteger)form{
    return [self pt_verticalGlyphForm:form range:NSMakeRange(0, [self length])];
}

-(NSMutableAttributedString *)pt_lineSpacing:(CGFloat)space{
    return [self pt_lineSpacing:space range:NSMakeRange(0, [self length])];
}


- (NSAttributedString *)pt_color:(UIColor *)color subString:(NSString *)subString {
    NSRange range = [self rangeOfString:subString];
    return [self pt_color:color range:range];
}

#pragma mark - With Range

-(NSMutableAttributedString *)pt_paragraphStyle:(NSParagraphStyle *)style range:(NSRange)range{
    //NSAssert(range.location == NSNotFound, @"The range parameter is NotFound");
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithString:self];
    [attributedString addAttribute:NSParagraphStyleAttributeName value:style range:range];
    return attributedString;
}

-(NSMutableAttributedString *)pt_attribute:(NSString *)attributeName value:(id)value range:(NSRange)range{
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithString:self];
    [attributedString addAttribute:NSFontAttributeName value:value range:range];
    return attributedString;
}

-(NSMutableAttributedString *)pt_addAttributesWithRange:(NSRange)range block:(void(^)(LWPrettyTextMaker *))makerBlock{
    LWPrettyTextMaker *maker = [[LWPrettyTextMaker alloc] initWithString:self range:range];
    makerBlock(maker);
    return maker.prettyText;
}

-(NSMutableAttributedString *)pt_font:(UIFont *)font range:(NSRange)range {
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithString:self];
    [attributedString addAttribute:NSFontAttributeName value:font range:range];
    return attributedString;
}
-(NSMutableAttributedString *)pt_color:(UIColor *)color range:(NSRange)range {
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithString:self];
    [attributedString addAttribute:NSForegroundColorAttributeName value:color range:range];
    return attributedString;
}
-(NSMutableAttributedString *)pt_backgroundColor:(UIColor *)color range:(NSRange)range {
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithString:self];
    [attributedString addAttribute:NSBackgroundColorAttributeName value:color range:range];
    return attributedString;
}
-(NSMutableAttributedString *)pt_ligature:(BOOL)ligature range:(NSRange)range {
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithString:self];
    [attributedString addAttribute:NSLigatureAttributeName value:@(ligature) range:range];
    return attributedString;
}
-(NSMutableAttributedString *)pt_kern:(NSInteger)space range:(NSRange)range {
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithString:self];
    [attributedString addAttribute:NSKernAttributeName value:@(space) range:range];
    return attributedString;
}
-(NSMutableAttributedString *)pt_strikethroughStyle:(NSUnderlineStyle)style range:(NSRange)range {
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithString:self];
    [attributedString addAttribute:NSStrikethroughStyleAttributeName value:@(style) range:range];
    return attributedString;
}
-(NSMutableAttributedString *)pt_strikethroughColor:(UIColor *)color range:(NSRange)range {
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithString:self];
    [attributedString addAttribute:NSStrikethroughColorAttributeName value:color range:range];
    return attributedString;
}
-(NSMutableAttributedString *)pt_underlineStyle:(NSUnderlineStyle)style range:(NSRange)range {
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithString:self];
    [attributedString addAttribute:NSUnderlineStyleAttributeName value:@(style) range:range];
    return attributedString;
}
-(NSMutableAttributedString *)pt_underlineColor:(UIColor *)color range:(NSRange)range {
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithString:self];
    [attributedString addAttribute:NSUnderlineColorAttributeName value:color range:range];
    return attributedString;
}
-(NSMutableAttributedString *)pt_strokeColor:(UIColor *)color range:(NSRange)range {
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithString:self];
    [attributedString addAttribute:NSStrokeColorAttributeName value:color range:range];
    return attributedString;
}
-(NSMutableAttributedString *)pt_strokeWidth:(CGFloat)width range:(NSRange)range {
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithString:self];
    [attributedString addAttribute:NSStrokeWidthAttributeName value:@(width) range:range];
    return attributedString;
}
-(NSMutableAttributedString *)pt_shadow:(NSShadow *)shadow range:(NSRange)range {
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithString:self];
    [attributedString addAttribute:NSShadowAttributeName value:shadow range:range];
    return attributedString;
}
-(NSMutableAttributedString *)pt_textEffect:(NSString *)string range:(NSRange)range {
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithString:self];
    [attributedString addAttribute:NSTextEffectAttributeName value:string range:range];
    return attributedString;
}
-(NSMutableAttributedString *)pt_attachment:(NSTextAttachment *)attachment range:(NSRange)range {
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithString:self];
    [attributedString addAttribute:NSAttachmentAttributeName value:attachment range:range];
    return attributedString;
}
-(NSMutableAttributedString *)pt_link:(NSURL *)url range:(NSRange)range {
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithString:self];
    [attributedString addAttribute:NSLinkAttributeName value:url range:range];
    return attributedString;
}
-(NSMutableAttributedString *)pt_baselineOffset:(CGFloat)offset range:(NSRange)range {
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithString:self];
    [attributedString addAttribute:NSBaselineOffsetAttributeName value:@(offset) range:range];
    return attributedString;
}
-(NSMutableAttributedString *)pt_obliqueness:(CGFloat)obliqueness range:(NSRange)range {
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithString:self];
    [attributedString addAttribute:NSObliquenessAttributeName value:@(obliqueness) range:range];
    return attributedString;
}
-(NSMutableAttributedString *)pt_expansion:(CGFloat)expansion range:(NSRange)range {
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithString:self];
    [attributedString addAttribute:NSExpansionAttributeName value:@(expansion) range:range];
    return attributedString;
}
-(NSMutableAttributedString *)pt_writingDirection:(NSArray<NSNumber *> *)direction range:(NSRange)range {
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithString:self];
    [attributedString addAttribute:NSWritingDirectionAttributeName value:direction range:range];
    return attributedString;
}
-(NSMutableAttributedString *)pt_verticalGlyphForm:(NSInteger)form range:(NSRange)range {
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithString:self];
    [attributedString addAttribute:NSVerticalGlyphFormAttributeName value:@(form) range:range];
    return attributedString;
}

-(NSMutableAttributedString *)pt_lineSpacing:(CGFloat)space range:(NSRange)range{
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithString:self];
    NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
    [paragraphStyle setLineSpacing:space];
    [attributedString addAttribute:NSParagraphStyleAttributeName value:paragraphStyle range:range];
    return attributedString;
}

@end