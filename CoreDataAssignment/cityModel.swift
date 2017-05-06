//
//  cityModel.swift
//  CoreDataAssignment
//
//  Created by Rohit Deshmukh on 5/3/17.
//  Copyright © 2017 San Jose State University. All rights reserved.
//

import Foundation
import UIKit

class citymodel: NSObject{

private var name = " "
private var email = " "
private var city = " "
private var zip = " "
    
   
    func setCity(name:String,email:String,city:String, zip:String ){
       self.name = name
       self.email = email
       self.city = city
       self.zip = zip
    
    }
    
    func getCity() -> citymodel{
      let obj = citymodel()
        obj.name = self.name
        obj.email = self.email
        obj.city = self.city
        obj.zip = self.zip
        return obj
    }



}
