//
//  AppInfoLog.swift
//  AFramework
//
//  Created by abyss on 2019/5/1.
//

import UIKit

class AppInfoLog: NSObject {
    static func report() {
        let version = PlistUtil.version
        let build = PlistUtil.build
        let host = DefaultsUtil.host()
        let identifier = PlistUtil.bundleIndentifier
        
        var isDebug = "生产模式"
        #if DEBUG
            isDebug = "开发模式"
        #endif
    
//        性能概述:
//            启动时间: \(M.shared.config.project.start_time)
//            编译时间: \(M.shared.config.project.build_time)
//            内存占用: \(M.shared.config.project.memory)
//            App大小: \(M.shared.config.project.binary)

        
        log.debug("""
            -------------------------------
            👮🏻‍♀️ 应用报告 for [\(identifier)] v\(version)(\(build))
            SDK模式: \(isDebug)
            网络客户端:
                域名: \(host)
                超时时间: \(M.shared.config.network.timeout_interval)s
                mock模式: \(M.shared.config.network.stub_enable)
            缓存:
                缓存大小: \(CacheService.default.getSize())
                请求缓存: \(CacheService.default.getSize("httpCache"))
                图片缓存: \(CacheService.default.getSize("imageCache"))
            -------------------------------
            """)
    }
}
