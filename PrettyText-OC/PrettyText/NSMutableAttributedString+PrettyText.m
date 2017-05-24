//
// Created by luowei on 2017/3/7.
// Copyright (c) 2017 luowei. All rights reserved.
//

#import "NSMutableAttributedString+PrettyText.h"


@implementation NSMutableAttributedString (PrettyText)

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

- (NSMutableAttributedString *)pt_color:(UIColor *)color subString:(NSString *)subString {
    if(!subString){
        return self;
    }
    NSRange range = [self.string rangeOfString:subString];
    return [self pt_color:color range:range];
}

- (NSMutableAttributedString *)pt_font:(UIFont *)font subString:(NSString *)subString {
    if(!subString){
        return self;
    }
    NSRange range = [self.string rangeOfString:subString];
    return [self pt_font:font range:range];
}


#pragma mark - With Range

-(NSMutableAttributedString *)pt_attribute:(NSString *)attributeName value:(id)value range:(NSRange)range{
    [self addAttribute:NSFontAttributeName value:value range:range];
    return self;
}
-(NSMutableAttributedString *)pt_addAttributesWithRange:(NSRange)range block:(void(^)(LWPrettyTextMaker *))makerBlock{
    LWPrettyTextMaker *maker = [[LWPrettyTextMaker alloc] initWithAttributedString:self range:range];
    makerBlock(maker);
    return maker.prettyText;
}

-(NSMutableAttributedString *)pt_paragraphStyle:(NSParagraphStyle *)style range:(NSRange)range{
    [self addAttribute:NSParagraphStyleAttributeName value:style range:range];
    return self;
}
-(NSMutableAttributedString *)pt_font:(UIFont *)font range:(NSRange)range {
    [self addAttribute:NSFontAttributeName value:font range:range];
    return self;
}
-(NSMutableAttributedString *)pt_color:(UIColor *)color range:(NSRange)range {
    [self addAttribute:NSForegroundColorAttributeName value:color range:range];
    return self;
}
-(NSMutableAttributedString *)pt_backgroundColor:(UIColor *)color range:(NSRange)range {
    [self addAttribute:NSBackgroundColorAttributeName value:color range:range];
    return self;
}
-(NSMutableAttributedString *)pt_ligature:(BOOL)ligature range:(NSRange)range {
    [self addAttribute:NSLigatureAttributeName value:@(ligature) range:range];
    return self;
}
-(NSMutableAttributedString *)pt_kern:(NSInteger)space range:(NSRange)range {
    [self addAttribute:NSKernAttributeName value:@(space) range:range];
    return self;
}
-(NSMutableAttributedString *)pt_strikethroughStyle:(NSUnderlineStyle)style range:(NSRange)range {
    [self addAttribute:NSStrikethroughStyleAttributeName value:@(style) range:range];
    return self;
}
-(NSMutableAttributedString *)pt_strikethroughColor:(UIColor *)color range:(NSRange)range {
    [self addAttribute:NSStrikethroughColorAttributeName value:color range:range];
    return self;
}
-(NSMutableAttributedString *)pt_underlineStyle:(NSUnderlineStyle)style range:(NSRange)range {
    [self addAttribute:NSUnderlineStyleAttributeName value:@(style) range:range];
    return self;
}
-(NSMutableAttributedString *)pt_underlineColor:(UIColor *)color range:(NSRange)range {
    [self addAttribute:NSUnderlineColorAttributeName value:color range:range];
    return self;
}
-(NSMutableAttributedString *)pt_strokeColor:(UIColor *)color range:(NSRange)range {
    [self addAttribute:NSStrokeColorAttributeName value:color range:range];
    return self;
}
-(NSMutableAttributedString *)pt_strokeWidth:(CGFloat)width range:(NSRange)range {
    [self addAttribute:NSStrokeWidthAttributeName value:@(width) range:range];
    return self;
}
-(NSMutableAttributedString *)pt_shadow:(NSShadow *)shadow range:(NSRange)range {
    [self addAttribute:NSShadowAttributeName value:shadow range:range];
    return self;
}
-(NSMutableAttributedString *)pt_textEffect:(NSString *)string range:(NSRange)range {
    [self addAttribute:NSTextEffectAttributeName value:string range:range];
    return self;
}
-(NSMutableAttributedString *)pt_attachment:(NSTextAttachment *)attachment range:(NSRange)range {
    [self addAttribute:NSAttachmentAttributeName value:attachment range:range];
    return self;
}
-(NSMutableAttributedString *)pt_link:(NSURL *)url range:(NSRange)range {
    [self addAttribute:NSLinkAttributeName value:url range:range];
    return self;
}
-(NSMutableAttributedString *)pt_baselineOffset:(CGFloat)offset range:(NSRange)range {
    [self addAttribute:NSBaselineOffsetAttributeName value:@(offset) range:range];
    return self;
}
-(NSMutableAttributedString *)pt_obliqueness:(CGFloat)obliqueness range:(NSRange)range {
    [self addAttribute:NSObliquenessAttributeName value:@(obliqueness) range:range];
    return self;
}
-(NSMutableAttributedString *)pt_expansion:(CGFloat)expansion range:(NSRange)range {
    [self addAttribute:NSExpansionAttributeName value:@(expansion) range:range];
    return self;
}
-(NSMutableAttributedString *)pt_writingDirection:(NSArray<NSNumber *> *)direction range:(NSRange)range {
    [self addAttribute:NSWritingDirectionAttributeName value:direction range:range];
    return self;
}
-(NSMutableAttributedString *)pt_verticalGlyphForm:(NSInteger)form range:(NSRange)range {
    [self addAttribute:NSVerticalGlyphFormAttributeName value:@(form) range:range];
    return self;
}

-(NSMutableAttributedString *)pt_lineSpacing:(CGFloat)space range:(NSRange)range{
    NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
    [paragraphStyle setLineSpacing:space];
    [self addAttribute:NSParagraphStyleAttributeName value:paragraphStyle range:range];
    return self;
}

@end
