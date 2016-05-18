//
//  CustomUITabBarController.swift
//  tns
//
//  Created by antoine labbe on 10/05/16.
//  Copyright © 2016 Blank. All rights reserved.
//

import UIKit


class CustomUIPageViewController: UIPageViewController, UIPageViewControllerDataSource, UIPageViewControllerDelegate {
    
    var visible = true
    let pages:[CustomUIViewController] = Data.pages.map{ CustomUIPageViewController.vcForPage($0)}
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dataSource = self
        delegate = self
    }
    
    class func vcForPage(page:AppPage) -> CustomUIViewController {
        let item = CustomUIViewController.instantiateFromStoryboard(UIStoryboard.mainStoryBoard())
        let _ = item.view // this is necessary to have to IBoutlets wired
        item.model = page
        return item
    }
    
    var currentPage: CustomUIViewController? = nil
    
    override func viewWillAppear(animated: Bool) {
        if let item:CustomUIViewController = currentPage ?? pages.first {
            self.setViewControllers([item], direction: UIPageViewControllerNavigationDirection.Forward, animated: true) { _ in }
        }
    }
    
    func pageViewController(pageViewController: UIPageViewController, didFinishAnimating finished: Bool, previousViewControllers: [UIViewController], transitionCompleted completed: Bool){
        currentPage = pageViewController.viewControllers![0] as? CustomUIViewController
    }


    func pageViewController(pageViewController: UIPageViewController, viewControllerAfterViewController viewController: UIViewController) -> UIViewController? {
        if let current = viewController as? CustomUIViewController {

            guard let currentIndex = pages.indexOf(current) else {
                return nil
            }
            let nextIndex = currentIndex + 1
            guard pages.count > nextIndex else {
                return nil
            }
            return pages[nextIndex]
        } else {
            return nil
        }
    }
    
    func pageViewController(pageViewController: UIPageViewController, viewControllerBeforeViewController viewController: UIViewController) -> UIViewController? {
        if let current = viewController as? CustomUIViewController {
            
            guard let currentIndex = pages.indexOf(current) else {
                return nil
            }
            let previousIndex = currentIndex - 1
            guard previousIndex >= 0 else {
                return nil
            }
            return pages[previousIndex]
        } else {
            return nil
        }
    }

    
    func toggleNavigation(animated:Bool) {
        for view in self.view.subviews {
            if let subView = view as? UIScrollView {
                subView.scrollEnabled = !subView.scrollEnabled
            }
        }
    }
}



