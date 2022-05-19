//
//  LoginPresenterProtocol.swift
//  Practice-Test
//
//  Created by Alif Santika Pradana Idris on 18/05/22.
//

import Foundation
import UIKit

protocol LoginPresenterProtocol {
    func login(email: String, password: String)
    func signUpOnClick(viewController : UIViewController)
}
