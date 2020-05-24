//
//  ModullViewController.swift
//  NavigationApp
//
//  Created by Taras on 24.05.2020.
//  Copyright © 2020 Taras. All rights reserved.
//

import UIKit

class ModallViewController: UIViewController {

    @IBOutlet weak var backButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
    }
    
    @IBAction func backButtonAction(_ backButton: UIButton){
        // self.backButton.backgroundColor = UIColor.green
        // backButton.backgroundColor = UIColor.yellow
        dismiss(animated: true) {
            print("Dismiss Modall View Controller")
        }
    }
}
