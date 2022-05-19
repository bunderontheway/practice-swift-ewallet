//
//  LoginVC.swift
//  Practice-Test
//
//  Created by Alif Santika Pradana Idris on 18/05/22.
//

import UIKit

class LoginVC: UIViewController {

    @IBOutlet weak var inputEmail: UITextField!
    @IBOutlet weak var inputPassword: UITextField!
    @IBOutlet weak var iconEmail: UIImageView!
    @IBOutlet weak var iconPassword: UIImageView!
    @IBOutlet weak var errorMessage: UILabel!
    @IBOutlet weak var lineEmail: UIView!
    @IBOutlet weak var linePassword: UIView!
    
    var presenter: LoginPresenterProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        inputEmail.delegate = self
        inputPassword.delegate = self
        errorMessage.text = ""
        self.inputPassword.isSecureTextEntry = true
        
    }

    @IBAction func didTapLoginButton(_ sender: Any) {
        let email: String = inputEmail.text ?? ""
        let password: String = inputPassword.text ?? ""
        self.presenter?.login(email: email, password: password)
    }
    
    @IBAction func didTapForgotPassword(_ sender: Any) {
        self.presenter?.signUpOnClick(viewController: self)
    }
}

extension LoginVC: LoginViewProtocol {
    func showError() {
        lineEmail.backgroundColor = .red
        linePassword.backgroundColor = .red
        errorMessage.text = "Username atau Password salah!"
        errorMessage.textColor = .red
    }
}

extension LoginVC: UITextFieldDelegate {
    func textFieldDidBeginEditing(_ textField: UITextField) {
        if textField == inputEmail {
            lineEmail.backgroundColor = .blue
        } else if textField == inputPassword {
            linePassword.backgroundColor = .blue
        }
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        if textField == inputEmail {
            if textField.text == "" {
                lineEmail.backgroundColor = .gray
            } else if (textField.text?.count < 5) {
                lineEmail.backgroundColor = .red
            }
        } else if textField == inputPassword {
            if textField.text == "" {
                lineEmail.backgroundColor = .gray
            } else if (textField.text?.count < 5) {
                lineEmail.backgroundColor = .red
            }
        }
    }
}
