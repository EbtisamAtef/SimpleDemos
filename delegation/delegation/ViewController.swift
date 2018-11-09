//
//  ViewController.swift
//  delegation
//
//  Created by mino on 4/25/18.
//  Copyright © 2018 mino. All rights reserved.
//

import UIKit

protocol cleartext {
    
    func clear();
    
}



class ViewController: UIViewController , cleartext{
    

    @IBOutlet weak var textfield: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let second : secondviewcontroller = segue.destination as! secondviewcontroller
        second.myprotocol = self
        second.str = textfield.text

        
    }
    
   
    @IBAction func sendButton(_ sender: UIButton) {
        
        
        
    }
    
    func clear() {
        
        textfield.text=""
    }

}

