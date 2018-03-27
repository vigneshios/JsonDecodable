//
//  UsersVC.swift
//  DecodableUsersTableView
//
//  Created by Apple on 21/03/18.
//  Copyright © 2018 Vignesh. All rights reserved.
//

import UIKit

class UsersVC: UIViewController {
   
    // Outlets
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpVC()
    }
    
    func setUpVC() {
        tableView.dataSource = self
        tableView.delegate = self
        tableView.estimatedRowHeight = UITableViewAutomaticDimension
        tableView.rowHeight = 220.0
        
        DataService.instance.getData(customURL: USERS_URL) { (success) in
            if success {
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
            }else {
                print("failed to load data")
            }
        }
    }
    
}


extension UsersVC : UITableViewDataSource, UITableViewDelegate {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataService.instance.users.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: USERS_CELL_ID, for: indexPath) as? UsersCell else {return UITableViewCell()}
        let user = DataService.instance.users[indexPath.row]
        cell.configureCell(user: user)
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    
}
