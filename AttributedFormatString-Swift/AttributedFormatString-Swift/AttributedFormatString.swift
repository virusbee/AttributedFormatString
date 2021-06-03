//
//  AttributedFormatString.swift
//  AttributedFormatString-Swift
//
//  Created by virusbee on 2021/6/3.
//

import Foundation

class AttributedFormatString {
    var format: NSAttributedString?
    var values: [String]?
    var attributes: [[NSAttributedString.Key:AnyObject]]?
    
    var string: NSAttributedString? {
        guard let resultString = format?.mutableCopy() as? NSMutableAttributedString else {
            return nil
        }
        
        let valuesCount = values?.count ?? 0
        let attrsCount = attributes?.count ?? 0
        
        var placeholder = String()
        
        for i in 0..<valuesCount {
            placeholder = "{\(i)}"
            guard let placeholderRange = resultString.string.range(of: placeholder) else {
                break
            }
            let range = NSRange(placeholderRange, in: resultString.string)
            
            if attrsCount == 1 {
                resultString.replaceCharacters(in: range, with: NSAttributedString(string: values![i], attributes: attributes?.first))
                continue
            }
            
            if i < attrsCount {
                resultString.replaceCharacters(in: range, with: NSAttributedString(string: values![i], attributes: attributes?[i]))
            } else {
                resultString.replaceCharacters(in: range, with: values![i])
            }
        }
        
        return resultString.copy() as? NSAttributedString
    }
}
