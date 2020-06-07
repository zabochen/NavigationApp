//
//  CustomCellTableViewCell.swift
//  NavigationApp
//
//  Created by Taras on 07.06.2020.
//  Copyright © 2020 Taras. All rights reserved.
//

import UIKit

class CustomCell: UITableViewCell {

    @IBOutlet weak var labelName: UILabel!
    
    func config(user: UserModel) {
        labelName.text = user.name
    }
}
