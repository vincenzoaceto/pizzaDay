//
//  ViewController.swift
//  PizzaDay
//
//  Created by Vincenzo Aceto on 11/01/2018.
//  Copyright © 2018 Vincenzo Aceto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dateLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let now = Date()
        let endDate = now.addingTimeInterval(24 * 3600 * 17)
        
        let formatter = DateComponentsFormatter()
        formatter.allowedUnits = [.day, .weekOfMonth]
        formatter.unitsStyle = .full
        let string = formatter.string(from: now, to: endDate)!
        
        print(string)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

