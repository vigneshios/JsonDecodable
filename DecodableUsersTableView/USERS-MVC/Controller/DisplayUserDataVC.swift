//
//  DisplayUserDataVC.swift
//  DecodableUsersTableView
//
//  Created by Apple on 21/03/18.
//  Copyright © 2018 Vignesh. All rights reserved.
//

import UIKit

class DisplayUserDataVC: UIViewController {

    // Outlets
    @IBOutlet weak var userNameLabel: UILabel!
    
    // Variables
    var name: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userNameLabel.text = name
        
    }


}
