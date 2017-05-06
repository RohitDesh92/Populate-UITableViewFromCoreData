//
//  CoreDataManager.swift
//  CoreDataAssignment
//
//  Created by Rohit Deshmukh on 5/3/17.
//  Copyright © 2017 San Jose State University. All rights reserved.
//

import Foundation
import CoreData
import UIKit

class CoreDataManager: NSObject{    //private class func => because we are using it just in the CoreDataManager.swift
    
  private class func getContext() -> NSManagedObjectContext{
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    let context = appDelegate.persistentContainer.viewContext
    return context
    
    }
  
    class public func saveCity(){
    
       let context = getContext()
       let newUser = NSEntityDescription.entity(forEntityName: "Users", in: context)
       let managedObject = NSManagedObject(entity: newUser!, insertInto: context)
 
        managedObject.setValue(nametext, forKey: "name")
        managedObject.setValue(citytext, forKey: "city")
        managedObject.setValue(emailtext, forKey: "email")
        managedObject.setValue(ziptext, forKey: "zip")
        


        do {
            try context.save()
            print("Saved")
            
        } catch  {
            print(error.localizedDescription)
        }
        
        
        
        
    }
    
    class func getObject() -> [modelUser]{
       var aray = [modelUser]()
        
        let fetchRequest : NSFetchRequest<Users> = Users.fetchRequest()
        do {
            let fetchResult = try getContext().fetch(fetchRequest)
            print(fetchResult)
            
            for item in fetchResult{
                let mod = modelUser(name: item.name!, email: item.email!,city:item.city!, zip:item.zip!)
                aray.append(mod)
            }
        } catch  {
            
        }
        return aray
    }

    
    class func deleteAll(){
        
        let context = getContext()
    
        let fetch = NSFetchRequest<NSFetchRequestResult>(entityName: "Users")
        let request = NSBatchDeleteRequest(fetchRequest: fetch)
        
        do {
             try context.execute(request)
            
        } catch  {
            
        }

    
    }

    struct modelUser {
        var name:String
        var email:String
        var city:String
        var zip :String
        
        init() {
            name = " "
            email = " "
            city = " "
            zip = " "
            
        }
        
        init(name:String, email:String, city: String, zip: String) {
           self.name = name
           self.email = email
           self.city = city
           self.zip = zip
        }
    }
    
}

