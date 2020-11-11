//
//  JumpUtil.swift
//  AFramework
//
//  Created by abyss on 2019/5/26.
//

import Foundation


public protocol Jumpable {
    @available(*, deprecated, message: "简化写法")
    static var jumpIdentifier: String { get }
    
    static var identifier: String { get }
}

public extension Jumpable {
    static var jumpIdentifier: String { return identifier }
}

public class JumperUtil {
    public static func jumpTo(
        storyboard: String,
        identifier: String,
        _ animated: Bool = true,
        _ modelWillPush: @escaping EventControllerCallback = {_ in}) {
        
        let vc = UIStoryboard(name: storyboard, bundle: Bundle.main)
            .instantiateViewController(withIdentifier: identifier)
        
        modelWillPush(vc)
        M.shared.nav?.pushViewController(vc, animated: animated)
    }
}
