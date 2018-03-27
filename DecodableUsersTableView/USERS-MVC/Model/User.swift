//
//  User.swift
//  DecodableUsersTableView
//
//  Created by Apple on 21/03/18.
//  Copyright © 2018 Vignesh. All rights reserved.
//

import Foundation

struct User: Decodable {
    var name: String
    var email: String
    var phone: String
    var address: Address
    var company: Company

}

struct Address: Decodable {
    var street: String
    var suite: String
    var city: String
    var zipcode: String
}

struct Company: Decodable {
    var name: String
    var catchPhrase: String
    var bs: String
}
