//
//  SignInViewController.swift
//  Marvel Comics Pragma
//
//  Created by David Yepes Buitrago on 2/14/20.
//  Copyright © 2020 David Yepes Buitrago. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController {

    @IBOutlet weak var emailtextField: UITextField?
    @IBOutlet weak var passwordTextField: UITextField?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        emailtextField?.layer.borderColor = UIColor(named: "TextColor")?.cgColor
        passwordTextField?.layer.borderColor = UIColor(named: "TextColor")?.cgColor
        
        emailtextField?.keyboardType = .emailAddress
        
        let toolbar = UIToolbar()
        toolbar.sizeToFit()
        
        let flexibleSpace = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.flexibleSpace, target: nil, action: nil)
        
        let donebutton = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.done, target: self, action: #selector(self.doneClicked))
        
        toolbar.setItems([flexibleSpace,donebutton], animated: false)
        
        emailtextField?.inputAccessoryView = toolbar
        
        passwordTextField?.inputAccessoryView = toolbar
    }
    
    @objc
    func doneClicked(){
        view.endEditing(true)
    }

}
