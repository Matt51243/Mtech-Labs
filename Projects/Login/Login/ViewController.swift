//
//  ViewController.swift
//  Login
//
//  Created by Matthew on 9/28/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var UsernameTextField: UITextField!
    @IBOutlet var forgotUsername: UIButton!
    @IBOutlet var forgotPassword: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        title = UsernameTextField.text
    }
    
    @IBAction func forgotUsernameAction(_ sender: Any) {
        performSegue(withIdentifier: "forgotUsername", sender: sender)
    }
    
    @IBAction func forgotPasswordAction(_ sender: Any) {
        performSegue(withIdentifier: "forgotPassword", sender: sender)
    }
    
    
  
    
}

