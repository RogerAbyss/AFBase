//
//  Security.swift
//  Strawberry
//
//  Created by abyss on 2019/6/3.
//

import Foundation
import CryptoSwift

/**
 ## Security(安全相关)
 <br>
 略
 */
public class Security {
    public static let key = (
        aes_key: "ZSKJ========ZSKJ",
        aes_iv: "ZSKJ========ZSKJ",
        salt: "drt",
        password_salt: "====ZSKJ",
        rsa_key: "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCtxvV5eVFgIJ0gWFL/hefuIHxJ3BcBTaOub+DgI8XRaNNW7Bcam2O9OV3Jbi/nTVrX0G6oKrvcksq+iXjgmz7ZuncJNCke+TzkT9CYFCmnUg8IdNFdAQw2TdO8/oKkqB3KnFCFWfZpcp58WPscpDDUT8YL1xU56vl/IZrPouxRSwIDAQAB"
    )
    
    public class func aes() -> AES {
        let aes = try! AES(key: Security.key.aes_key.bytes,
                           blockMode: CBC(iv: Security.key.aes_iv.bytes),
                           padding: .pkcs5)
        
        return aes
    }
}

