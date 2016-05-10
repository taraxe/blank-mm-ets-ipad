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
    
    init(title:String, description:String, image:UIImage?, colors:[UIColor], items:[PageItem]) {
        self.title = title
        self.description = description
        self.image = image
        self.colors = colors
        self.items = items
    }
}

struct PageItem {
    let type:ItemType
    let url:NSURL
    let image:UIImage?
    let subtitle:String
    let description:String
    
    init(type:ItemType, url:NSURL, image:UIImage?, subtitle:String, description:String) {
        self.type = type
        self.url = url
        self.image = image
        self.subtitle = subtitle
        self.description = description
    }
    
    enum ItemType {
        case PDF
        case Web
        case Video
    }
}