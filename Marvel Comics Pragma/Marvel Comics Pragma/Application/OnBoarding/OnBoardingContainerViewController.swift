//
//  OnBoardingContainerViewController.swift
//  Marvel Comics Pragma
//
//  Created by David Yepes Buitrago on 2/11/20.
//  Copyright © 2020 David Yepes Buitrago. All rights reserved.
//

import UIKit

class OnBoardingContainerViewController: UIViewController {

      
    @IBOutlet weak var pageControll: UIPageControl!
    @IBOutlet weak var pageControl: UIPageControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "goToSignIn"{
            UserDefaults.standard.set(true,forKey: "watchingOnboarding")
            UserDefaults.standard.synchronize()
            return
        }
        
        guard segue.identifier == "openOnBoarding"
            , let destination = segue.destination as? OnBoardingViewController else {
            return
        }
        
        destination.pageControl = self.pageControl
        
    }
}
