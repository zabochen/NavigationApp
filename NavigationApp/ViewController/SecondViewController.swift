//
//  SecondViewController.swift
//  NavigationApp
//
//  Created by Taras on 24.05.2020.
//  Copyright © 2020 Taras. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var backButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func backButtonAction(_ backButton: UIButton){
        self.navigationController?.popViewController(animated: true)
    }
}
