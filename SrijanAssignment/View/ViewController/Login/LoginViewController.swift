//
//  LoginViewController.swift
//  ChocoAssignment
//
//  Created by rails on 09/09/21.
//

import UIKit

class LoginViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var txtEmail : UITextField!
    @IBOutlet weak var txtPassword : UITextField!
    @IBOutlet weak var loginButton : UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.txtEmail.delegate = self
        self.txtPassword.delegate = self
        self.loginButton.backgroundColor = UIColor.gray
        self.loginButton.isUserInteractionEnabled = false
        txtEmail.addTarget(self, action: #selector(handleTextChange), for: .editingChanged)
        txtPassword.addTarget(self, action: #selector(handleTextChange), for: .editingChanged)
    }
    
    @objc func handleSignUp() {
        validateForm()
    }
    
    func validateForm() {
        guard let emailText = txtEmail.text, !emailText.isEmpty else { return }
        guard let passwordText = txtPassword.text, !passwordText.isEmpty else { return }
        
        txtEmail.text = txtEmail.text!.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
        txtPassword.text = txtPassword.text!.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
        if txtEmail.text?.count == 0 {
            SDConstant().shakeTextField(txtEmail)
        } else if !SDConstant().isValidateUserName(strUsername:self.txtEmail.text ?? "") {
            SDConstant().alertViewShow(message: SDConstant().invalidEmail, vc: self)
            self.loginButton.backgroundColor = UIColor.gray
            
        } else if txtPassword.text?.count == 0{
            SDConstant().shakeTextField(txtPassword)
        }else if !SDConstant().isValidatePassword(strPassword: self.txtPassword.text ?? "") {
            
            SDConstant().alertViewShow(message: SDConstant().invalidPassword, vc: self)
            
        }else {
            self.view.endEditing(true)
            
            
        }
    }
    
    func startSigningUp(email: String, password: String) {
        print("Please call any Sign up api for registration: ", email, password)
    }
    
    //handle the checking of textfield if its not empty
    @objc func handleTextChange() {
        
        
        let emailText = txtEmail.text!
        let passwordText = txtPassword.text!
        
        let isFormFilled = !emailText.isEmpty  && !passwordText.isEmpty &&  passwordText.count >= 5 && validateForm1()
        
        if isFormFilled{
            loginButton.backgroundColor = UIColor.link
            loginButton.isUserInteractionEnabled = true
            
        }
        else {
            loginButton.backgroundColor = UIColor.gray
            loginButton.isUserInteractionEnabled = false
        }
    }
}

//MARK: - IBActions
extension LoginViewController {
    @IBAction func btnLogin(_ sender:Any){
        handleSignUp()
        UserDefaults.standard.set(txtEmail.text, forKey:"username")
    }
    
    func validateForm1() -> Bool {
        var isValid = false
        self.txtEmail.text = txtEmail.text!.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
        self.txtPassword.text = txtPassword.text!.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
        if txtEmail.text?.count == 0 {
            isValid = false
        } else if !SDConstant().isValidateUserName(strUsername: self.txtEmail.text ?? "") {
           
            SDConstant().alertViewShow(message: SDConstant().invalidEmail, vc: self)
            isValid = false
        } else if txtPassword.text?.count == 0 {
            isValid = false
        } else if !SDConstant().isValidatePassword(strPassword: self.txtPassword.text ??  "") {
            
            SDConstant().alertViewShow(message: SDConstant().invalidPassword, vc: self)
            isValid = false
        } else {
            self.view.endEditing(true)
            isValid = true
        }
        return isValid
    }
    
}
