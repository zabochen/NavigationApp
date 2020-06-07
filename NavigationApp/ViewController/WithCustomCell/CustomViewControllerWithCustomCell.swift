//
//  CustomViewControllerWithCustomCell.swift
//  NavigationApp
//
//  Created by Taras on 07.06.2020.
//  Copyright © 2020 Taras. All rights reserved.
//

import UIKit

class CustomViewControllerWithCustomCell: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    private let IDENTIFIER_CELL_NAME = "customCell"
    private var userList: [UserModel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Fill userList
        for i in 1...100 {
            self.userList.append(UserModel(name: "User_\(i)", age: 10 + i))
        }
        
        // Init TableView
        tableView.delegate = self
        tableView.dataSource = self
        
        // 1. Create/Register Nib + add our/custom identifier
        let tableNib = UINib(nibName: "CustomCell", bundle: nil)
        tableView.register(tableNib, forCellReuseIdentifier: IDENTIFIER_CELL_NAME)
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return userList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // 2. Create custom cell
        let cell = tableView.dequeueReusableCell(
            withIdentifier: IDENTIFIER_CELL_NAME,
            for: indexPath) as! CustomCell
        
        // 3. Config custom cell
        cell.config(user: userList[indexPath.row])
        
        return cell
    }
}
