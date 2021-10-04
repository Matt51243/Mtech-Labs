//
//  ViewController.swift
//  Two Buttons
//
//  Created by Matthew on 9/10/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textField: UITextField!
    @IBAction func setTextButtonTapped(_ sender: UIButton) {
        if let text = textField.text {
            label.text = text
        }
    }
    @IBAction func clearTextButtonTapped(_ sender: UIButton) {
        if textField.hasText {
            textField.text = ""
            label.text = ""
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
}

