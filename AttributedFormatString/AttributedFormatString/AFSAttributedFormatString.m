//
//  AFSAttributedFormatString.m
//  AttributedFormatString
//
//  Created by virusbee on 2021/6/3.
//

#import "AFSAttributedFormatString.h"

@implementation AFSAttributedFormatString

- (NSAttributedString *)string {
    NSMutableAttributedString *resultString = [self.format mutableCopy];
    
    NSUInteger valuesCount = self.values.count;
    NSUInteger attrsCount = self.attributes.count;
    
    NSString *placeholder = nil;
    
    for (int i = 0; i < valuesCount; i++) {
        placeholder = [NSString stringWithFormat:@"{%d}", i];
        NSRange range = [resultString.string rangeOfString:placeholder];
        if (range.location == NSNotFound) {
            break;
        }
        
        if (attrsCount == 1) {
            [resultString replaceCharactersInRange:range withAttributedString:[[NSAttributedString alloc] initWithString:self.values[i] attributes:self.attributes.firstObject]];
            continue;
        }
        
        if (i < attrsCount) {
            [resultString replaceCharactersInRange:range withAttributedString:[[NSAttributedString alloc] initWithString:self.values[i] attributes:self.attributes[i]]];
        } else {
            [resultString replaceCharactersInRange:range withString:self.values[i]];
        }
    }
    
    return [resultString copy];
}

@end
