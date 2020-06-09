//
//  BaseCell.swift
//  NavigationApp
//
//  Created by Taras on 07.06.2020.
//  Copyright © 2020 Taras. All rights reserved.
//

import UIKit

protocol BaseCell {
    static func cellNib() -> UINib?
    static func cellIdentifier() -> String
}
