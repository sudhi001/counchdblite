//
//  ViewController.swift
//  Counchdblite
//
//  Created by Sudhi.S on 24/07/15.
//
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        CounchDataBaseHandler.sharedInstance.createDocument()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

