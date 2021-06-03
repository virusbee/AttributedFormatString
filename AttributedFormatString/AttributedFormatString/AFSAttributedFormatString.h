//
//  AFSAttributedFormatString.h
//  AttributedFormatString
//
//  Created by virusbee on 2021/6/3.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface AFSAttributedFormatString : NSObject

@property (nonatomic, strong) NSAttributedString *format;

@property (nonatomic, readonly, strong) NSAttributedString *string;

/*
 The real values to be replaced.
 */
@property (nonatomic, nullable, strong) NSArray<NSString *> *values;

/*
 If only one attribute specified, then all values will be rendered with this attribute.
 If values' count is more then attributes' count, then the rest of values will be rendered with the format's attribute.
 */
@property (nonatomic, nullable, strong) NSArray<NSDictionary<NSAttributedStringKey, id> *> *attributes;

@end

NS_ASSUME_NONNULL_END
