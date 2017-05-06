//
//  ListController.swift
//  CoreDataAssignment
//
//  Created by Rohit Deshmukh on 5/6/17.
//  Copyright © 2017 San Jose State University. All rights reserved.
//

import Foundation
import UIKit

class ListController: ViewController, UITableViewDelegate, UITableViewDataSource {
    var res = CoreDataManager.getObject()
  //  var ar = ["hi ", "how  "," umm"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        for item in res{
        print(item.city)
        print(item.name)
        print(item.zip)
        print(item.email)
        }
        print("Number of rows are: ",res.count)
        
        
    }
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return res.count
    }
    
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.default , reuseIdentifier: "cell" )
        let a = res[indexPath.row]
            cell.textLabel?.text = a.city
        return(cell)
    }

    
    
    
    
}
