//
//  UIButton+Extensions.swift
//  Stores Locator
//
//  Created by Rui Peres on 27/01/2015.
//  Copyright (c) 2015 RP. All rights reserved.
//

import UIKit

extension UIImage {
    class func templatedImage(#named : String) -> UIImage {
        return UIImage(named: named)!.imageWithRenderingMode(.AlwaysTemplate)
    }
}

extension UIButton {
    
    class func barButton(named imageName :String) -> UIButton {
        let button = UIButton(frame: CGRect(origin: CGPointZero, size: CGSize(width: 22, height: 22)))
        
        let defaultImage = UIImage.templatedImage(named: imageName)
        let highlightedImage = UIImage.templatedImage(named: map(imageName,{$0 + "_highlighted" })!)
        
        button.setBackgroundImage(defaultImage, forState: .Normal)
        button.setBackgroundImage(highlightedImage, forState: .Highlighted)
        
        return button
    }
}