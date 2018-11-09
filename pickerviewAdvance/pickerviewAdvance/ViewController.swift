//
//  ViewController.swift
//  pickerviewAdvance
//
//  Created by mino on 5/12/18.
//  Copyright © 2018 mino. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource,UIPickerViewDelegate{
    
    
    @IBOutlet weak var picker: UIPickerView!
    
    @IBOutlet weak var select: UILabel!
    
    @IBOutlet weak var pickerwife: UIPickerView!
    
    
    var parents = ["amir","khaled","ahmed","ramy"]
    var son = ["omar","hana","malek","rokaia"]
    var wife = ["ebtisam","aml","karima","rabab"]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        
        if (pickerView.tag == 0){
            return 2
        }else{
            return 1
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        switch pickerView.tag {
        case 0:
            if component == 0{
                return parents.count
            }else{
                return son.count
            }
        case 1:
            return wife.count
            
        default:
            return son.count
        }
    }
    
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        
        switch pickerView.tag {
        case 0:
            if component == 0{
                return parents[row]
            }else{
                return son[row]
            }
        case 1:
            return wife[row]
            
        default:
            return son[row]
        }
        
        
        
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        
        if pickerView.tag == 0 {
            
        if component == 0 {
            return select.text = parents[row]

        }else{
            return select.text = son[row] + " his parent is " + parents[row] + " " + " & " + wife[row]

        }
        }else{
            
            return select.text = wife[row]
        }
    
    }


    override func viewDidLoad() {
        super.viewDidLoad()
        
        picker.delegate = self
        picker.dataSource = self
        pickerwife.delegate = self
        pickerwife.dataSource = self
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
        

}

