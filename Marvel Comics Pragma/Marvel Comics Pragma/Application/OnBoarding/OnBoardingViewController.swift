//
//  OnBoardingViewController.swift
//  Marvel Comics Pragma
//
//  Created by David Yepes Buitrago on 2/11/20.
//  Copyright © 2020 David Yepes Buitrago. All rights reserved.
//

import UIKit

class OnBoardingViewController: UIPageViewController {

    var pageControl: UIPageControl?

    fileprivate(set) lazy var items: [OnBoardingItem] = {
        return [
            OnBoardingItem(title: "Title 1 OnBoarding", Description: "Description onboarding 1", image: "OnBoarding1"),
            OnBoardingItem(title: "Title 2 OnBoarding", Description: "Description onboarding 2", image: "OnBoarding2"),
            OnBoardingItem(title: "Title 3 OnBoarding", Description: "Description onboarding 3", image: "OnBoarding3")
        ]
    }()
    
    fileprivate(set) lazy var contentViewControllers: [UIViewController] = {
        var items = [UIViewController]()
        for i in 0 ..< self.items.count {
            items.append(self.instanteViewController(i))
        }
        return items
    }()

    
    override func viewDidLoad() {
        super.viewDidLoad()

        delegate = self
        dataSource = self
        
        pageControl?.numberOfPages = items.count
        updateContainerView(stepNumber: 0)
    }
    
    func updateContainerView(stepNumber index: Int) {
        setViewControllers([contentViewControllers[index]], direction: .forward, animated: true, completion: nil)
    }

    func instanteViewController(_ index: Int) -> UIViewController {
        
        let storyBoardOnBoarding = UIStoryboard(name: "OnBoarding", bundle: Bundle.main)
        let viewController = storyBoardOnBoarding.instantiateViewController(withIdentifier: "OnBoardingSteps") as? OnBoardingStepsViewController
        guard (viewController != nil) else {
                return UIViewController()
        }
        
        viewController!.item = items[index]
        return viewController!
    }
}


