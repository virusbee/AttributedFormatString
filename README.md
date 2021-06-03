# AttributedFormatString
Replace placeholder in format string with attributed values, the placeholder defined as {0}, {1}, {2}.

## Usage
```
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
```

## Usage For Swift
```
override func viewDidLoad() {
    super.viewDidLoad()
    
    let label = UILabel(frame: self.view.bounds)
    label.backgroundColor = .white
    label.textAlignment = .center
    label.attributedText = selfIntroduction()
    self.view.addSubview(label)
}

func selfIntroduction() -> NSAttributedString? {
    let attrFormat = AttributedFormatString()
    attrFormat.format = NSAttributedString(string: NSLocalizedString("self_introduction", comment: ""), attributes: [.foregroundColor:UIColor.black, .font:UIFont.systemFont(ofSize: 14)])
    attrFormat.values = [NSLocalizedString("first_name", comment: ""), NSLocalizedString("last_name", comment: "")]
    attrFormat.attributes = [[.foregroundColor:UIColor.red, .font:UIFont.systemFont(ofSize: 20)]]
    return attrFormat.string
}
```
