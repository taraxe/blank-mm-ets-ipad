//
//  models.swift
//  tns
//
//  Created by antoine labbe on 12/05/16.
//  Copyright © 2016 Blank. All rights reserved.
//

import UIKit


struct AppPage {
    let title:String
    let description:String
    let image:UIImage?
    let colors:[UIColor]
    let items: [PageItem]
}

struct PageItem {
    let type:ItemType
    let url:NSURL
    let image:UIImage?
    let subtitle:String
    let description:String
    
    enum ItemType {
        case PDF
        case Web
        case Video
    }
}