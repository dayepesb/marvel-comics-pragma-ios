//
//  RegisterViewController.swift
//  Marvel Comics Pragma
//
//  Created by David Yepes Buitrago on 2/17/20.
//  Copyright © 2020 David Yepes Buitrago. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {
    
    @IBOutlet weak var navigationBar: UINavigationItem!
    
    @IBOutlet weak var emailtextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var phoneNumberTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        var arrayTextField: [UITextField] = [
            self.emailtextField,
            self.passwordTextField,
            self.firstNameTextField,
            self.lastNameTextField,
            self.phoneNumberTextField
            
        ]
        
        let toolbar = UIToolbar()
        toolbar.sizeToFit()
        
        let flexibleSpace = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.flexibleSpace, target: nil, action: nil)
        
        let donebutton = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.done, target: self, action: #selector(self.doneClicked))
        
        toolbar.setItems([flexibleSpace,donebutton], animated: false)
        
        for textField in arrayTextField {
            textField.layer.borderColor = UIColor(named: "TextColor")?.cgColor
            
            textField.inputAccessoryView = toolbar
        }
        
        emailtextField?.keyboardType = .emailAddress

    }
    
    @objc
    func doneClicked(){
        view.endEditing(true)
    }
}
