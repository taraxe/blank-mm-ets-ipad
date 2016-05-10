//
//  GradientView.swift
//  tns
//
//  Created by antoine labbe on 10/05/16.
//  Copyright © 2016 Blank. All rights reserved.
//

import UIKit

class HeaderView: UIView {
    
    // to be defined from outside
    var colors:[UIColor] = []
    
    override func drawRect(rect: CGRect) {
        if colors.count == 2 {
            setGradient(colors[1], color2: colors[0])
        }
    }
}

