//
//  ViewController.swift
//  Datepicker
//
//  Created by mino on 5/12/18.
//  Copyright © 2018 mino. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var DatePicker: UIDatePicker!
    
    @IBOutlet weak var result: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    @IBAction func clickbtn(_ sender: UIButton) {
        
        let currentdate = Date()
        let selectdate = DatePicker.date
        let calender = Calendar.current
        
        let component = calender.dateComponents([Calendar.Component.day], from:selectdate , to:currentdate)
        
        let year: Int = Int(component.day!/365)
        let month: Int = Int(component.day! - (year*365))/30
        var day: Int = component.day! - ((month*30) + (year*365))
        result.text = "Your Age is \(year) years \(month) months \(day) days"
        
    }
    

}

