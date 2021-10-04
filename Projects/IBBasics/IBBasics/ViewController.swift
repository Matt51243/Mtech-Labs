//
//  ViewController.swift
//  IBBasics
//
//  Created by Matthew on 8/25/21.
//

import UIKit

class ViewController: UIViewController {
   
    @IBOutlet weak var myButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        myButton.setTitle("This is the new title", for: .normal)
    }
    
    @IBAction func myButtonTapped(_ sender: Any) {
        print("My button was tapped")
    }
    
    

}

