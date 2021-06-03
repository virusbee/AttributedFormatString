//
//  ViewController.swift
//  AttributedFormatString-Swift
//
//  Created by virusbee on 2021/6/3.
//

import UIKit

class ViewController: UIViewController {

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
}

