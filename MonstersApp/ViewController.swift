//
//  ViewController.swift
//  MonstersApp
//
//  Created by Arnav Gupta on 07/03/20.
//  Copyright © 2020 Arnav Gupta. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func showMessage(sender: UIButton) {
        let alertCtrl = UIAlertController(title: "Hello World", message: "What an awesome day", preferredStyle: UIAlertController.Style.alert)
        alertCtrl.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        
        present(alertCtrl, animated: true, completion: nil)
        
    }
    


}

