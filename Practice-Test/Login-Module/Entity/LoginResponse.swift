//
//  LoginResponse.swift
//  Practice-Test
//
//  Created by Alif Santika Pradana Idris on 18/05/22.
//

import Foundation

public struct LoginResponse: Codable {
    public var status: Int
    public var message: String
    public var data: LoginDataResponse
}

public struct LoginDataResponse: Codable {
    public var id: Int
    public var email: String
    public var token: String
    public var hasPin: Bool
}
