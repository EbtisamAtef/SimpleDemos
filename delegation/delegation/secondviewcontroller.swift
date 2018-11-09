//
//  secondviewcontroller.swift
//  delegation
//
//  Created by mino on 4/25/18.
//  Copyright © 2018 mino. All rights reserved.
//

import UIKit

class secondviewcontroller: UIViewController {
    
    var str: String?
    var myprotocol: cleartext?

    
    @IBOutlet weak var labelText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        labelText.text = str
    }
    
    
    
    @IBAction func doneButton(_ sender: UIBarButtonItem) {
        
        myprotocol?.clear()
        
        self.navigationController?.popViewController(animated: true)
        
    }

    
}
