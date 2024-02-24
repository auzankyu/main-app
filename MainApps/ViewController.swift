//
//  ViewController.swift
//  MainApps
//
//  Created by Auzan Lazuardi on 24/02/24.
//

import UIKit
import Core
import CoreNavigation
import Language

class ViewController: UIViewController {

    let corenav = CoreNavigation()
    let core = Core()
    let lang = Language()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        core.testString()
        corenav.testString()
        let data = lang.testLanguage(key: "nested.first")
        print(data)
    }


}

