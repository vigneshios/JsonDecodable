//
//  DataService.swift
//  DecodableUsersTableView
//
//  Created by Apple on 21/03/18.
//  Copyright © 2018 Vignesh. All rights reserved.
//

import Foundation

class DataService {
    
    private init() {}
    static let instance = DataService()
    var users = [User]()
    
    func getData(customURL: String, completion: @escaping completionHandler) {
        guard let url = URL(string: customURL) else {return}
        URLSession.shared.dataTask(with: url) { (data, _, _) in
            if let data = data {
                print(data)
            }
            do {
                let users = try JSONDecoder().decode([User].self, from: data!)
                for results in users {
                    let name = results.name
                    let email = results.email
                    let phone = results.phone
                    let address = results.address as Address
                    let company = results.company as Company

                    let user = User(name: name, email: email, phone: phone, address: address, company: company)
                    self.users.append(user)
                }
                completion(true)
            }catch{debugPrint(error)}
        }.resume()
    }
    
}
