//
//  ViewController.swift
//  Marvel Comics Pragma
//
//  Created by David Yepes Buitrago on 2/10/20.
//  Copyright © 2020 David Yepes Buitrago. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func viewWillDisappear(_ animated: Bool) {
        UIApplication.shared.statusBarStyle = .lightContent
    }

}

