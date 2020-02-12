//
//  ViewController.swift
//  Marvel Comics Pragma
//
//  Created by David Yepes Buitrago on 2/11/20.
//  Copyright © 2020 David Yepes Buitrago. All rights reserved.
//

import UIKit

extension OnBoardingViewController: UIPageViewControllerDataSource {
    func pageViewController(
        _ pageViewController: UIPageViewController,
        viewControllerBefore viewController: UIViewController) -> UIViewController? {
        
        let index = contentViewControllers.firstIndex(of: viewController)
        if index == 0 {
            return nil
        }
        return contentViewControllers[index! - 1]
    }
    
    func pageViewController(
        _ pageViewController: UIPageViewController,
        viewControllerAfter viewController: UIViewController) -> UIViewController? {
        let index = contentViewControllers.firstIndex(of: viewController)
        if index == contentViewControllers.count - 1 {
            return nil
        }
        return contentViewControllers[index! + 1]
    }
}

extension OnBoardingViewController: UIPageViewControllerDelegate {
    func pageViewController(
        _ pageViewController: UIPageViewController,
        didFinishAnimating finished: Bool,
        previousViewControllers: [UIViewController],
        transitionCompleted completed: Bool) {
        
        guard let index = contentViewControllers.firstIndex(of: viewControllers!.first!) else {
            return
        }
        
        pageControl?.currentPage = index
    }
}
