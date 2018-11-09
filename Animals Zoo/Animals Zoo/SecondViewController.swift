//
//  SecondViewController.swift
//  Animals Zoo
//
//  Created by mino on 5/12/18.
//  Copyright © 2018 mino. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController , UITableViewDelegate , UITableViewDataSource{
    
    var Animals = Array<Animal>()
    
    @IBOutlet weak var tableviewlist: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //tableviewlist.delegate = self
        //tableviewlist.dataSource = self
        
        Animals.append(Animal(name: "baboon", desc: "Lorem Ipsum is simply dummy text of the ", img: "baboon"))
        Animals.append(Animal(name: "bulldog", desc: "Lorem Ipsum is simply dummy text of the printing and typesetting industry", img: "bulldog"))
        Animals.append(Animal(name: "panda", desc: "Lorem Ipsum is simply dummy text of the printing and typesetting industry", img: "panda"))
        Animals.append(Animal(name: "swallow_bird", desc: "Lorem Ipsum is simply dummy text of the printing and typesetting industry", img: "swallow_bird"))
        Animals.append(Animal(name: "white_tiger", desc: "Lorem Ipsum is simply dummy text of the printing and typesetting industry", img: "white_tiger"))
        Animals.append(Animal(name: "zebra", desc: "Lorem Ipsum is simply dummy text of the printing and typesetting industry", img: "zebra"))
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Animals.count

    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell:mycell = tableView.dequeueReusableCell(withIdentifier:"cell" , for: indexPath) as! mycell
        // this is identifire for cell in tableview
        
        cell.animalname.text = Animals[indexPath.row].name!
        cell.animaldesc.text = Animals[indexPath.row].desc!
        cell.animalimg.image = UIImage(named: Animals[indexPath.row].img!)

        
        return cell
    }
    
    
    
    
    
    
    
    
    
    
    
    


}
