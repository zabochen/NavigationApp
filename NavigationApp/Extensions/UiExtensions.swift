//
//  UiExtensions.swift
//  NavigationApp
//
//  Created by Taras on 07.06.2020.
//  Copyright © 2020 Taras. All rights reserved.
//

import UIKit

extension UITableViewCell {

    static func cellIdentifier() -> String {
        return String(describing: self)
    }
    
    static func cellNib() -> UINib? {
        return UINib(nibName: String(describing: self), bundle: nil)
    }
}

extension UITableView {
    
    func registerCustomCell(baseCell: BaseCell.Type) {
        self.register(
            baseCell.baseCellNib(),
            forCellReuseIdentifier: baseCell.baceCellIdentifier()
        )
    }
}
