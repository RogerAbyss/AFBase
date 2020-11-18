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
        
        log.debug("123".aes_1())
        log.debug("123".aes())
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}


public extension String {
    func aes_1() -> String {
        let result = try! Security.aes().encrypt(self.bytes)
        
        return result.toHexString()
    }
    
    func aes_decrypt() -> String {
        if let result = try? Security.aes().decrypt(Array<UInt8>(hex: self)) {
            return String(bytes: result, encoding: .utf8) ?? ""
        } else {
            return ""
        }
    }
}
