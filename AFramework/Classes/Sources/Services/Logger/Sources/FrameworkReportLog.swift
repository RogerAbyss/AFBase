//
//  FrameworkReportLog.swift
//  AFramework
//
//  Created by abyss on 2019/5/1.
//

import UIKit

class FrameworkReportLog: NSObject {
    
    /**
     🌴🌱🎮⛱ 🏖 🏝 🏜 🌋
     💊💉⚔️ ⚙️🗑
     ⏰🛡🎁🎈📔📄  🛸 🚁 🛶 ⛵️ 🚤 🛥 🛳
     ❤️ 🧡 💛 💚 💙 💜 🖤 💔
     ⚪️ ⚫️ 🔴 🔵
     🔈 🔇 🔕 🍏 🍎 🍭 🍫 🍿
     🥎🧲 🧹⭐️ ✨ ⚡️💥 🔥 ☃️💧
     */
    static func report() {
        
        FrameworkReportLog.logLogo()
        #if DEBUG
            FrameworkReportLog.logEmoji()
        #endif
    }
    
    static func logLogo() {
        print("""
        -------------------------------
        🌈 AFramework [\(PlistUtil.version)]

        by Abyss(roger_ren@qq.com)
        -------------------------------
        """)
    }
    
    static func logEmoji() {
        log.verbose("""
        ----------------------------
                Emoji
        ----------------------------
        🌈 AFramework
        🔥 Error

        🛠 Config
        🧪 DebuggerService
        📶 NetMonitorService
        🌐 Localize
        
        🚀 Network Core
        ✈️ Network Request
        📦 Network Response
        📁 Network Cache
        🧩 Network Addition
        
        🍀 Kingfisher
        ❄️ Cache
        🌟 Refresh
        ☀️ Pay
        
        🔔 Notification
        🔒 Encrypt
        👮🏻‍♀️ Reporter
        🍺 Defaults
        🛰 Location
        
        🍬 Touch
        ☠️ Skeleton

        💰 Analsys - money

        🌱 可能关注的消息

        Platform: ⌚️ 📱 💻 🖥
        ----------------------------
        """)
    }
}
