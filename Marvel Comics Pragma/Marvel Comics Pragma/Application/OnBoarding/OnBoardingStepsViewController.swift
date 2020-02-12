//
//  OnBoardingStepsViewController.swift
//  Marvel Comics Pragma
//
//  Created by David Yepes Buitrago on 2/11/20.
//  Copyright © 2020 David Yepes Buitrago. All rights reserved.
//

import UIKit

class OnBoardingStepsViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var image: UIImageView!
    
    var item: OnBoardingItem?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        titleLabel.text = item?.title
        descriptionLabel.text = item?.Description
        image.image = UIImage(named: item?.image ?? "")
    }
    
}
