//
// Created by luowei on 2017/3/8.
// Copyright (c) 2017 luowei. All rights reserved.
//

#import "NSString+HTML.h"
#import "PrettyText_OC.h"


@implementation NSString (HTML)

- (NSMutableAttributedString *)HTMLAttributedString  {
    NSDictionary *options = @{NSDocumentTypeDocumentAttribute: NSHTMLTextDocumentType,
            NSCharacterEncodingDocumentAttribute: @(NSUTF8StringEncoding)};

    __block NSMutableAttributedString *attributedString = nil;
    dispatch_main_sync_safe(^{
        NSError *error;
        attributedString =  [[NSMutableAttributedString alloc]
                initWithData:[self dataUsingEncoding:NSUTF8StringEncoding]
                     options:options documentAttributes:nil error:&error];
        NSLog(@"Error create attributeString from HTML:%@", [error localizedFailureReason]?:@"");
    });
    return attributedString;
}

@end
