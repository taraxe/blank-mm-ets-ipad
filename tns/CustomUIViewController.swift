//
//  CustomUIViewController.swift
//  tns
//
//  Created by antoine labbe on 11/05/16.
//  Copyright © 2016 Blank. All rights reserved.
//

import UIKit

class CustomUIViewController: UIViewController, UICollectionViewDelegateFlowLayout, UICollectionViewDataSource, UICollectionViewDelegate {

    @IBOutlet weak var header: HeaderView!
    @IBOutlet weak var content: UICollectionView!
    @IBOutlet weak var logo: UIImageView!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    
    var model:AppPage? = nil {
        didSet {
            if let m = model {
                self.logo.image = m.image
                self.header.colors = m.colors
                self.titleLabel.text = m.title
                self.titleLabel.textColor = UIColor.whiteColor()
                self.descriptionLabel.text = m.description
                self.descriptionLabel.textColor = UIColor.whiteColor()
            }
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.content.delegate = self
    }
    
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return model?.items.count ?? 0
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("ScreenItemCell", forIndexPath: indexPath) as! CustomUICollectionViewCell
        cell.model = (model!, (model?.items[indexPath.item])!)
        return cell
    }
    
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        return CGSizeMake(self.fixedCellWidth(), self.content.frame.size.height)
    }
    
    func fixedCellWidth() -> CGFloat {
        return (self.content.frame.size.width / CGFloat(5))
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAtIndex section: Int) -> UIEdgeInsets {
        let flowLayout = (collectionViewLayout as! UICollectionViewFlowLayout)
        let cellSpacing = flowLayout.minimumInteritemSpacing
        let cellWidth = fixedCellWidth()
        let cellCount = CGFloat(collectionView.numberOfItemsInSection(section))
        let collectionViewWidth = collectionView.bounds.size.width
        let totalCellWidth = cellCount * cellWidth
        let totalCellSpacing = cellSpacing * (cellCount - 1)
        let totalCellsWidth = totalCellWidth + totalCellSpacing
        let edgeInsets = (collectionViewWidth - totalCellsWidth) / 2.0
        return edgeInsets > 0 ? UIEdgeInsetsMake(0, edgeInsets, 0, edgeInsets) : UIEdgeInsetsMake(0, cellSpacing, 0, cellSpacing)
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAtIndex section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(collection: UICollectionView, didSelectItemAtIndexPath selectedItemIndex: NSIndexPath){
        if let cell = content.cellForItemAtIndexPath(selectedItemIndex) as? CustomUICollectionViewCell, let (_,item) = cell.model {
            switch item.type {
            case PageItem.ItemType.PDF, PageItem.ItemType.Web:
                self.performSegueWithIdentifier("OpenWeb", sender: cell)
            case PageItem.ItemType.Video:
                self.performSegueWithIdentifier("OpenVideo", sender: cell)
            }
        }
    }
    
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let destination = segue.destinationViewController
        let selectedItem = sender as! CustomUICollectionViewCell
        if let identifier = segue.identifier {
            switch identifier {
            case "OpenVideo":
                if let videoController = destination as? CustomAVPlayerViewController {
                    let _ = videoController.view
                    videoController.model = selectedItem.model?.1
                }
            case "OpenWeb" :
                if let iframeController = destination as? CustomWebViewController {
                    let _ = iframeController.view
                    iframeController.model = selectedItem.model!
                }
            default:
                return
            }
        }
    }

    @IBAction func unwindToPage(segue: UIStoryboardSegue) {}
}