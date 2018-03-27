//
//  UsersCell.swift
//  DecodableUsersTableView
//
//  Created by Apple on 21/03/18.
//  Copyright © 2018 Vignesh. All rights reserved.
//

import UIKit

class UsersCell: UITableViewCell {

    // Outlets
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var phoneNumLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var companyDetailsLabel: UILabel!
    
    func configureCell(user: User) {
        nameLabel.text = user.name
        emailLabel.text = user.email
        phoneNumLabel.text = user.phone
        addressLabel.text = "\(user.address)"
        companyDetailsLabel.text = "\(user.company)"
    }
    
}
