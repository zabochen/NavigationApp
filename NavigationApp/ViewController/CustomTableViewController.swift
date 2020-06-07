//
//  CustomTableViewController.swift
//  NavigationApp
//
//  Created by Taras on 05.06.2020.
//  Copyright © 2020 Taras. All rights reserved.
//

import UIKit

class CustomTableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    var userList: [UserModel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Fill userList
        for i in 0...10 {
            userList.append(UserModel(name: "User_\(i)", age: i))
        }
        
        // Set delegat & dataSource
        self.tableView.delegate = self
        self.tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return userList.count
     }
     
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "customCell", for: indexPath)
        let user = userList[indexPath.row]
        cell.textLabel?.text = user.name
        cell.detailTextLabel?.text = String(user.age)
        
        // Image - v1
        // cell.imageView?.image = UIImage(named: "android")
        
        // Image - v2
        // cell.imageView?.image = UIImage(#imageLiteral(resourceName: "android.png"))
        cell.imageView?.image = #imageLiteral(resourceName: "android.png")
        
        return cell
     }
}
