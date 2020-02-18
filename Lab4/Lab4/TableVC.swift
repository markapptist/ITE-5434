//
//  TableVC.swift
//  Lab4
//
//  Created by Mark-Anthony Octavius Meritt on 2020-02-18.
//  Copyright © 2020 Mark-Anthony Octavius Meritt. All rights reserved.
//

import Foundation
import UIKit

class TableVC: UITableViewController
{
    
    var cell: TableViewCell?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //1. registered the cell
        self.tableView.register(TableViewCell.self, forCellReuseIdentifier: "TableViewCell")
        
    }
    
    //2. specify what row the cell will go
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //3. create the cell and add to the table based on index
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as! TableViewCell
        
        cell.textLabel?.text = "Label"
        
        
        return cell
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 8
    }
    

}
