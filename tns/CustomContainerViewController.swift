//
//  ViewController.swift
//  tns
//
//  Created by antoine labbe on 10/05/16.
//  Copyright © 2016 Blank. All rights reserved.
//

import UIKit

class CustomContainerViewController: UIViewController {

    @IBOutlet weak var footer: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let topBorder = CALayer()
        topBorder.frame = CGRectMake(0, 0, self.view.frame.size.width, 1)
        topBorder.backgroundColor = UIColor.blackColor().CGColor
        footer.layer.addSublayer(topBorder)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    private var embeddedViewController: CustomUIPageViewController!
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if let vc = segue.destinationViewController as? CustomUIPageViewController
            where segue.identifier == "EmbedSegue" {
            self.embeddedViewController = vc
        }
    }

    @IBAction func onMagicGesture(sender: UIRotationGestureRecognizer) {
        if sender.rotation != 0 && sender.state == UIGestureRecognizerState.Ended {
            embeddedViewController.toggleNavigation(true)
            sender.rotation = 0
        }
    }
}

