//
//  ViewController.swift
//  AFramework
//
//  Created by roger_ren@qq.com on 11/06/2020.
//  Copyright (c) 2020 roger_ren@qq.com. All rights reserved.
//

import UIKit
import AFramework
import SwiftyBeaver

class ViewController: UIViewController, Jumpable {
    static var identifier: String = "ViewController"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        log.debug("identifier:" + ViewController.identifier)
        log.debug("jumpIdentifier:" + ViewController.jumpIdentifier)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

