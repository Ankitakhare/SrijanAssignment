//
//  Extension.swift
//  ChocoAssignment
//
//  Created by ankita khare on 07/09/21.
//

import Foundation

import UIKit

extension UIView {
    
    public var width : CGFloat {
       set {
         self.frame.size.width = newValue
        }
        get{
           return self.frame.size.width
        }
    }
    
    public var height : CGFloat {
        set{self.frame.size.height = newValue}
        get{return self.frame.size.height
            
        }
    }
    
    public var top : CGFloat {
        set{
            self.frame.origin.y = newValue
        }
        get{return self.frame.origin.y}
    }
    
    public var bottom : CGFloat {
        set{
            (self.frame.size.height +  self.frame.origin.y)
        }
        get{ return self.frame.size.height +  self.frame.origin.y}

 
    }
    
    public var left : CGFloat {
        set{
            self.frame.origin.x = newValue
        }
        get{return self.frame.origin.x}
    }
    
    public var right : CGFloat {
        set{
            (self.frame.size.width +  self.frame.origin.x)
        }
        get{  return self.frame.size.width +  self.frame.origin.x}

 
    }
    
}
