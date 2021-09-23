//
//  HomeViewController.swift
//  ChocoAssignment
//
//  Created by ankita khare on 23/09/21.
//

import UIKit

class HomeViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var textHello:UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.textHello.textColor = UIColor.link
        self.textHello.isUserInteractionEnabled = false
        if let name = UserDefaults.standard.string(forKey: "username"){
            self.textHello.text = "Hello" + name
        }
        
    }
    
    @IBAction func btnBack(_ sender:Any){
        self.navigationController?.popViewController(animated: true)
    }
    
}




