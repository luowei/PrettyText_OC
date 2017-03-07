//
// Created by luowei on 2017/3/7.
// Copyright (c) 2017 luowei. All rights reserved.
//

#import "LWPrettyTextMaker.h"

@implementation LWPrettyTextMaker {

}

- (instancetype)initWithString:(NSString *)string range:(NSRange)range {
    self = [self init];
    if (self) {
        self.range = range;
        self.attributedString = [[NSMutableAttributedString alloc] initWithString:string];
        self.attributes = @{}.mutableCopy;
    }

    return self;
}

- (instancetype)initWithAttributedString:(NSMutableAttributedString *)attributedString range:(NSRange)range {
    self = [self init];
    if (self) {
        self.range = range;
        self.attributedString = attributedString;
        self.attributes = @{}.mutableCopy;
    }

    return self;
}

-(NSMutableAttributedString *)prettyText{
    [self.attributedString addAttributes:self.attributes range:self.range];
    return self.attributedString;
}

#pragma mark - Implementation

-(LWPrettyTextMaker *)pt_attribute:(NSString *)attributeName value:(id)value{
    self.attributes[attributeName] = value;
    return self;
}

-(LWPrettyTextMaker *)pt_paragraphStyle:(NSParagraphStyle *)style{
    return [self pt_attribute:NSParagraphStyleAttributeName value:style];
}
-(LWPrettyTextMaker *)pt_font:(UIFont *)font{
    return [self pt_attribute:NSFontAttributeName value:font];
}
-(LWPrettyTextMaker *)pt_color:(UIColor *)color{
    return [self pt_attribute:NSForegroundColorAttributeName value:color];
}
-(LWPrettyTextMaker *)pt_backgroundColor:(UIColor *)color{
    return [self pt_attribute:NSBackgroundColorAttributeName value:color];
}
-(LWPrettyTextMaker *)pt_ligature:(BOOL)ligature{
    return [self pt_attribute:NSLigatureAttributeName value:@(ligature)];
}
-(LWPrettyTextMaker *)pt_kern:(NSInteger)space{
    return [self pt_attribute:NSKernAttributeName value:@(space)];
}
-(LWPrettyTextMaker *)pt_strikethroughStyle:(NSUnderlineStyle)style{
    return [self pt_attribute:NSStrikethroughStyleAttributeName value:@(style)];
}
-(LWPrettyTextMaker *)pt_strikethroughColor:(UIColor *)color{
    return [self pt_attribute:NSStrikethroughColorAttributeName value:color];
}
-(LWPrettyTextMaker *)pt_underlineStyle:(NSUnderlineStyle)style{
    return [self pt_attribute:NSUnderlineStyleAttributeName value:@(style)];
}
-(LWPrettyTextMaker *)pt_underlineColor:(UIColor *)color{
    return [self pt_attribute:NSUnderlineColorAttributeName value:color];
}
-(LWPrettyTextMaker *)pt_strokeColor:(UIColor *)color{
    return [self pt_attribute:NSStrokeColorAttributeName value:color];
}
-(LWPrettyTextMaker *)pt_strokeWidth:(CGFloat)width{
    return [self pt_attribute:NSStrokeWidthAttributeName value:@(width)];
}
-(LWPrettyTextMaker *)pt_shadow:(NSShadow *)shadow{
    return [self pt_attribute:NSShadowAttributeName value:shadow];
}
-(LWPrettyTextMaker *)pt_textEffect:(NSString *)string{
    return [self pt_attribute:NSTextEffectAttributeName value:string];
}
-(LWPrettyTextMaker *)pt_attachment:(NSTextAttachment *)attachment{
    return [self pt_attribute:NSAttachmentAttributeName value:attachment];
}
-(LWPrettyTextMaker *)pt_link:(NSURL *)url{
    return [self pt_attribute:NSLinkAttributeName value:url];
}
-(LWPrettyTextMaker *)pt_baselineOffset:(CGFloat)offset{
    return [self pt_attribute:NSBaselineOffsetAttributeName value:@(offset)];
}
-(LWPrettyTextMaker *)pt_obliqueness:(CGFloat)obliqueness{
    return [self pt_attribute:NSObliquenessAttributeName value:@(obliqueness)];
}
-(LWPrettyTextMaker *)pt_expansion:(CGFloat)expansion{
    return [self pt_attribute:NSExpansionAttributeName value:@(expansion)];
}
-(LWPrettyTextMaker *)pt_writingDirection:(NSArray<NSNumber *> *)direction{
    return [self pt_attribute:NSWritingDirectionAttributeName value:direction];
}
-(LWPrettyTextMaker *)pt_verticalGlyphForm:(NSInteger)form{
    return [self pt_attribute:NSVerticalGlyphFormAttributeName value:@(form)];
}

#pragma mark - ParagraphStyle

-(LWPrettyTextMaker *)pt_lineSpacing:(CGFloat)space{
    NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
    [paragraphStyle setLineSpacing:space];
    return [self pt_attribute:NSParagraphStyleAttributeName value:paragraphStyle];
}

@end
