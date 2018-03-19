//
//  ViewController.swift
//  levv.me
//
//  Created by Lucas dos Santos on 3/19/18.
//  Copyright © 2018 Lucas dos Santos. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
               self.view.endEditing(true)
    }


}

