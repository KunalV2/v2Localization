//
//  ViewController.swift
//  v2Localization
//
//  Created by Kunal Parekh on 16/01/18.
//  Copyright © 2018 v2soltions. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var languageSegment: UISegmentedControl!
    @IBOutlet weak var welcomeMessage: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let prefferedLanguage = Locale.preferredLanguages[0] as String
        let arr = prefferedLanguage.components(separatedBy: "-")
        let deviceLanguage = arr.first
        
        if deviceLanguage == "hi"{
            languageSegment.selectedSegmentIndex = 1
        }
        else if deviceLanguage == "fr"
        {
            languageSegment.selectedSegmentIndex = 2
        }
        else if deviceLanguage == "nl"{
            languageSegment.selectedSegmentIndex = 3
        }
        else{
            languageSegment.selectedSegmentIndex = 0
        }
        
        welcomeMessage.text = NSLocalizedString("Welcome Message", comment: "")
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

