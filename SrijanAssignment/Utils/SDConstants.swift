

import Foundation
import UIKit

class SDConstant{
    
    let invalidEmail                      = "Enter proper user name"
    let invalidPassword                   = "Password not meeting the criteria"
    let alertTitle                        = "Alert"
    
    
    func shakeTextField(_ txtField: UITextField) {
        let animation = CABasicAnimation(keyPath: "position")
        animation.duration = 0.10
        animation.repeatCount = 2
        animation.autoreverses = true
        animation.fromValue = CGPoint(x:txtField.center.x - 7,y:txtField.center.y)
        animation.toValue = CGPoint(x:txtField.center.x + 7, y:txtField.center.y)
        txtField.layer.add(animation,forKey: "position")
    }
    
    
    
    func alertViewShow(message: String, vc: UIViewController) {
        let alert = UIAlertController(title: alertTitle, message: message, preferredStyle: .alert)
        let ok = UIAlertAction(title: "Yes", style: .default, handler: { action in
        })
        alert.addAction(ok)
        vc.present(alert, animated: true)
    }
    
    
    
    func alertViewShowForPassword(message: String, vc: UIViewController) {
        let alert = UIAlertController(title: alertTitle, message: message, preferredStyle: .alert)
        let ok = UIAlertAction(title: "Yes", style: .default, handler: { action in
        })
        alert.addAction(ok)
        vc.present(alert, animated: true)
    }
    
    
    
    func isValidateUserName(strUsername: String) -> Bool {
        let REGEX: String
        REGEX = "[A-Z0-9a-z.-].{2,10}" //"[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,6}"
        return NSPredicate(format: "SELF MATCHES %@", REGEX).evaluate(with: strUsername)
        
        
    }
    
    
    
    func isValidatePassword(strPassword: String) -> Bool {
        let passwordTest = NSPredicate(format: "SELF MATCHES %@", "^(?=.*[a-z])(?=.*[0-9])(?=.*[A-Z])(?=.*[$@$#!%*?&])[A-Za-z\\d$@$#!%*?&]{5,}")
        return passwordTest.evaluate(with: strPassword)
        
    }
}


