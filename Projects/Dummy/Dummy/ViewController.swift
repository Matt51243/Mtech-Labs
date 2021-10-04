//
//  ViewController.swift
//  Dummy
//
//  Created by Matthew on 8/23/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func buttonTapped(_ sender: Any) {
        if nameLabel.text != "Matthew Altamiranda" {
            nameLabel.text = "Matthew Altamiranda"
            nameLabel.backgroundColor = .systemPink
        } else {
            nameLabel.text = "Who am I"
            nameLabel.backgroundColor = .systemOrange
        }
       
    }
    
    
    
    
    
    
    
    
    

}

