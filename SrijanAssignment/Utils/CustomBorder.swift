



import UIKit

class customBorder: UIView {

    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    
    @IBInspectable var borderWidth: CGFloat {
        get {
            return layer.borderWidth
        }set {
            layer.borderWidth = newValue
        }
    }
    
    @IBInspectable var borderColor: UIColor? {
        get {
            return UIColor(cgColor: layer.borderColor!)
        }set {
            layer.borderColor = newValue?.cgColor
        }
    }

}

class buttonBorder: UIButton {
    @IBInspectable var borderWidth: CGFloat {
        get {
            return layer.borderWidth
        }set {
            layer.borderWidth = newValue
        }
    }
    
    @IBInspectable var borderColor: UIColor? {
        get {
            return UIColor(cgColor: layer.borderColor!)
        }set {
            layer.borderColor = newValue?.cgColor
        }
    }
}

class labelBorder: UILabel {
    @IBInspectable var borderWidth: CGFloat {
        get {
            return layer.borderWidth
        }set {
            layer.borderWidth = newValue
        }
    }
    
    @IBInspectable var borderColor: UIColor? {
        get {
            return UIColor(cgColor: layer.borderColor!)
        }set {
            layer.borderColor = newValue?.cgColor
        }
    }
}
class tableBorder: UITableView {
    @IBInspectable var borderWidth: CGFloat {
        get {
            return layer.borderWidth
        }set {
            layer.borderWidth = newValue
        }
    }
    
    @IBInspectable var borderColor: UIColor? {
        get {
            return UIColor(cgColor: layer.borderColor!)
        }set {
            layer.borderColor = newValue?.cgColor
        }
    }
}

class textBorder: UITextField {
    @IBInspectable var borderWidth: CGFloat {
        get {
            return layer.borderWidth
        }set {
            layer.borderWidth = newValue
        }
    }
    
    @IBInspectable var borderColor: UIColor? {
        get {
            return UIColor(cgColor: layer.borderColor!)
        }set {
            layer.borderColor = newValue?.cgColor
        }
    }
}

class textViewBorder: UITextView {
    @IBInspectable var borderWidth: CGFloat {
        get {
            return layer.borderWidth
        }set {
            layer.borderWidth = newValue
        }
    }
    
    @IBInspectable var borderColor: UIColor? {
        get {
            return UIColor(cgColor: layer.borderColor!)
        }set {
            layer.borderColor = newValue?.cgColor
        }
    }
}

class imageBorder: UIImageView {
    @IBInspectable var borderWidth: CGFloat {
        get {
            return layer.borderWidth
        }set {
            layer.borderWidth = newValue
        }
    }
    
    @IBInspectable var borderColor: UIColor? {
        get {
            return UIColor(cgColor: layer.borderColor!)
        }set {
            layer.borderColor = newValue?.cgColor
        }
    }
}
