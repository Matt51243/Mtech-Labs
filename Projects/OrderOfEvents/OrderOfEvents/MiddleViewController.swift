//
//  MiddleViewController.swift
//  OrderOfEvents
//
//  Created by Matthew on 9/29/21.
//

import UIKit

class MiddleViewController: UIViewController {

    @IBOutlet var Label: UILabel!
    var eventNumber: Int = 1
    
    func addevent(from: String) {
        if let existingText = Label.text {
            Label.text = "\(existingText)\n Event Number \(eventNumber) was \(from)"
            eventNumber += 1
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        addevent(from: "viewDidLoad")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        addevent(from: "viewWillAppear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        addevent(from: "viewDidAppear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        addevent(from: "viewWillDisappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        addevent(from: "viewDidDisappear")
    }
    
}
