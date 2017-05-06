//
//  ViewController.swift
//  CoreDataAssignment
//
//  Created by Rohit Deshmukh on 4/20/17.
//  Copyright © 2017 San Jose State University. All rights reserved.
//

import UIKit
import CoreData

 var nametext = " "
 var emailtext = " "
 var citytext = " "
 var ziptext = " "


class ViewController: UIViewController, UITextViewDelegate {
    @IBOutlet weak var name_tv: UITextField!
    @IBOutlet weak var email_tv: UITextField!
    @IBOutlet weak var city_tv: UITextField!
    @IBOutlet weak var zip_tv: UITextField!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        
    }
    
    // hide keyboard when user touches outside
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    

    @IBAction func SaveRecord(_ sender: Any) {
        nametext = name_tv.text!
        emailtext = email_tv.text!
        citytext = city_tv.text!
        ziptext = zip_tv.text!
 
 
      CoreDataManager.saveCity()
     // CoreDataManager.getObject()
    }
    
    @IBAction func DeleteAll(_ sender: Any) {
        
        CoreDataManager.deleteAll()
    }


}

