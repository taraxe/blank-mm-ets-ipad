//
//  CustomWebViewController.swift
//  tns
//
//  Created by antoine labbe on 14/05/16.
//  Copyright © 2016 Blank. All rights reserved.
//

import UIKit

class CustomWebViewController : UIViewController, UIWebViewDelegate {
    
    @IBOutlet weak var webView: UIWebView!
    @IBOutlet weak var header: HeaderView!
    
    @IBOutlet weak var logo: UIImageView!
    @IBOutlet weak var closeImage: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var spinner: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let tapGestureRecognizer = UITapGestureRecognizer(target:self, action:#selector(CustomWebViewController.closeTapped(_:)))
        closeImage.userInteractionEnabled = true
        closeImage.addGestureRecognizer(tapGestureRecognizer)
        webView.delegate = self
        webView.scalesPageToFit = true
        webView.contentMode = UIViewContentMode.ScaleAspectFit
    }
    
    func closeTapped(img: AnyObject){
        self.performSegueWithIdentifier("Exit", sender: self)
    }
    
    var model:(AppPage,PageItem)? = nil {
        didSet {
            if let (p,i) = model {
                header.colors = p.colors
                logo.image = p.image
                titleLabel.text = p.title
                titleLabel.textColor = UIColor.whiteColor()
                loadURL(i.url)
            }
        }
    }
    
    func loadURL(u:NSURL) {
        webView.loadRequest(NSURLRequest(URL: u))
    }
    
    func webView(webView: UIWebView, didFailLoadWithError error: NSError?) {

        // avoid failure on random site errors, like CORS...
        guard error?.code == 999 else {
         return
        }
        
        let alert = UIAlertController(title: "Erreur", message: "Impossible de charger le document demandé", preferredStyle: UIAlertControllerStyle.Alert)
        
        alert.addAction(UIAlertAction(title: "Ressayer", style: UIAlertActionStyle.Default, handler: { _ in
            if let u = self.model?.1.url {
                self.loadURL(u)
                return
            }
        }))
        alert.addAction(UIAlertAction(title: "Annuler", style: UIAlertActionStyle.Cancel, handler: { _ in
            self.closeTapped(self.closeImage)
            return
        }))
        
        // show the alert
        self.presentViewController(alert, animated: true, completion: nil)
    }
    
    func webViewDidStartLoad(webView: UIWebView) {
        UIView.transitionWithView(self.spinner,
                                  duration:0.1,
                                  options: UIViewAnimationOptions.TransitionCrossDissolve,
                                  animations: { self.spinner.alpha = 1 },
                                  completion: nil
        )
        spinner.startAnimating()
    }
    
    func webViewDidFinishLoad(webView: UIWebView) {
        UIView.transitionWithView(self.spinner,
                                  duration:0.1,
                                  options: UIViewAnimationOptions.TransitionCrossDissolve,
                                  animations: { self.spinner.alpha = 0 },
                                  completion: nil
        )
        spinner.stopAnimating()
        
    }
    
    
}
