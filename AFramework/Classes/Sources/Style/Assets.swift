//
//  Assets.swift
//  AFramework
//
//  Created by abyss on 2019/5/2.
//

import Foundation

public class Assets {
    public static let placeholder = Assets.image("placeholder")
    
    public static func image(_ imageName: String) -> UIImage {
        if let path = Bundle.main.path(forResource: "AFramework", ofType: "bundle") {
            let b = Bundle(path: path)
            if let result = b?.path(forResource: "AF-\(imageName)@3x", ofType: "png") {
                guard let image = UIImage(contentsOfFile: result) else { return UIImage() }
                
                return image
            }
        }
        return UIImage()
    }
}
