//
//  ViewController.swift
//  Calculator
//
//  Created by Matthew on 9/13/21.
//

import UIKit

class ViewController: UIViewController {


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func num9(_ sender: Any) {
        print("9")
    }
    @IBAction func num8(_ sender: Any) {
        print("8")
    }
    @IBAction func num7(_ sender: Any) {
        print("7")
    }
    @IBAction func num6(_ sender: Any) {
        print("6")
    }
    @IBAction func num5(_ sender: Any) {
        print("5")
    }
    @IBAction func num4(_ sender: Any) {
        print("4")
    }
    @IBAction func num3(_ sender: Any) {
        print("3")
    }
    @IBAction func num2(_ sender: Any) {
        print("2")
    }
    @IBAction func num1(_ sender: Any) {
        print("1")
    }
    @IBAction func num0(_ sender: Any) {
        print("0")
    }
    @IBOutlet weak var consoleOnScreen: UILabel!
}
var num9: Int = 9
var num8: Int = 8
var num7: Int = 7
var num6: Int = 6
var num5: Int = 5
var num4: Int = 4
var num3: Int = 3
var num2: Int = 2
var num1: Int = 1
var num0: Int = 0


