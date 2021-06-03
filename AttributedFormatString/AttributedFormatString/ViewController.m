//
//  ViewController.m
//  AttributedFormatString
//
//  Created by virusbee on 2021/6/3.
//

#import "ViewController.h"
#import "AFSAttributedFormatString.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UILabel *label = [[UILabel alloc] initWithFrame:self.view.bounds];
    label.backgroundColor = UIColor.whiteColor;
    label.textAlignment = NSTextAlignmentCenter;
    label.attributedText = [self selfIntroduction];
    [self.view addSubview:label];
}

- (NSAttributedString *)selfIntroduction {
    AFSAttributedFormatString *attrFormat = [[AFSAttributedFormatString alloc] init];
    attrFormat.format = [[NSAttributedString alloc] initWithString:NSLocalizedString(@"self_introduction", nil) attributes:@{NSForegroundColorAttributeName:UIColor.blackColor, NSFontAttributeName:[UIFont systemFontOfSize:14]}];
    attrFormat.values = @[NSLocalizedString(@"first_name", nil), NSLocalizedString(@"last_name", nil)];
    attrFormat.attributes = @[@{NSForegroundColorAttributeName:UIColor.redColor, NSFontAttributeName:[UIFont systemFontOfSize:20]}];
    return attrFormat.string;
}

@end
