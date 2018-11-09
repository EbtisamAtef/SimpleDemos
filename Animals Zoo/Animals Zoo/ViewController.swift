//
//  ViewController.swift
//  Animals Zoo
//
//  Created by mino on 5/12/18.
//  Copyright © 2018 mino. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource{
    
    
    @IBOutlet weak var AnimallTable: UITableView!
    
    var Notkiller = ["Monky","Elephant","Cow"]
    
    var Killer = ["Bear","Lion","Tiggr"]
    
    var Section = ["Notkiller","Killer"]
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return Section.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return Section[section]
    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if section == 0 {
            
            return Notkiller.count
            
        }else{
            return Killer.count

        }
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier:"AnimalCell" , for: indexPath)
        // this is identifire for cell in tableview
        
        if indexPath.section == 0 {
            
        cell.textLabel?.text = Notkiller[indexPath.row]
            
        }else{
            
            cell.textLabel?.text = Killer[indexPath.row]

        }

    return cell
    
    }

    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        //Notkiller.append("newanimal")
        //AnimallTable.reloadData()
        
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

