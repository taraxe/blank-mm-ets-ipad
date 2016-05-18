//
//  CustomUICollectionViewCell.swift
//  tns
//
//  Created by antoine labbe on 12/05/16.
//  Copyright © 2016 Blank. All rights reserved.
//

import UIKit

class CustomUICollectionViewCell : UICollectionViewCell {
    
    @IBOutlet weak var image: UIImageView!
    
    @IBOutlet weak var subtitle: UILabel!
    @IBOutlet weak var text: UILabel!

    
    var model:(AppPage,PageItem)? = nil {
        didSet {
            if let (p,m) = model {
                self.image.image = m.image
                self.subtitle.text = m.subtitle
                self.text.text = m.description
                let c = p.colors[0]
                self.subtitle.textColor = c
                self.text.textColor = c
            }
            // even if borders are already inside the images, redraw a border in case the cell is not large enough
            image.layer.borderWidth = 1
            image.layer.borderColor = UIColor.blackColor().CGColor
        }
    }
    
    override func prepareForReuse() {
        self.subtitle.text = nil
        self.text.text = nil
    }
    
    
}
