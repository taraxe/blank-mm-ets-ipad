//
//  CustomAVPlayerViewController.swift
//  tns
//
//  Created by antoine labbe on 14/05/16.
//  Copyright © 2016 Blank. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation

class CustomAVPlayerViewController :  AVPlayerViewController {
    
    var model : PageItem? = nil {
        didSet {
            if let url = model?.url {
                self.player = AVPlayer(URL: url)
                self.player!.play()
            }
        }
    }
}
