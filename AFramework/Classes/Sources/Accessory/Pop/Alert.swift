//
//  Alert.swift
//  xl
//
//  Created by 任超 on 2018/9/13.
//  Copyright © 2018年 Abyss. All rights reserved.
//

import Foundation
import SwiftyJSON
import PopupDialog

public class Alert: NSObject {
    /**
     调用Alert
    */
    public class func showAlert(
        buttons: Array<String> = ["AFrameworkNoteEnsure".localized()], //确定
        title: String = "AFrameworkNoteNote".localized(), //提示
        message: String = "",
        cancelName: String = "AFrameworkNoteCancel".localized(), // 取消
        _ vc: UIViewController = M.shared.nav!,
        event: @escaping EventTagCallback) {
        
        let popup = PopupDialog(title: title, message: message)
        
        let cancel = CancelButton(title: cancelName) {
            vc.dismiss(animated: true, completion: nil)
        }
        
        popup.addButton(cancel)
        
        var tag = 0
        for buttonName in buttons {
            let button = DefaultButton(title: buttonName) {
                event(tag)
            }
            
            button.setTitleColor(.app_tintColor, for: .normal)
            
            tag = tag + 1
            popup.addButton(button)
        }
                
        vc.present(popup, animated: true, completion: nil)
    }
    
    public class func showAlertSimple(
        cancelName: String = "AFrameworkNoteEnsure".localized(), //确定
        title: String = "AFrameworkNoteNote".localized(), //提示
        message: String,
        _ vc: UIViewController = M.shared.nav!) {
        
        let popup = PopupDialog(title: title, message: message)
        
        let cancel = CancelButton(title: cancelName) {
            vc.dismiss(animated: true, completion: nil)
        }
        
        popup.addButton(cancel)
        
        vc.present(popup, animated: true, completion: nil)
    }
}
