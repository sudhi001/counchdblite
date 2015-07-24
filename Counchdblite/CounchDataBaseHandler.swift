//
//  CounchDataBaseHandler.swift
//  Counchdblite
//
//  Created by Sudhi.S on 24/07/15.
//
//

import UIKit




public class CounchDataBaseHandler: NSObject {
    
    var database:CBLDatabase?
    var manager:CBLManager?
    var dbName = "mydb"
    
    override init() {
       super.init()
            self.manager = CBLManager.sharedInstance()
        var error: NSError?;
            self.database = self.manager!.databaseNamed(dbName, error: &error)
            self.database = self.manager!.databaseNamed(dbName, error: &error)
            if (error != nil) {
              println(error)
             }
        }
   public class var sharedInstance: CounchDataBaseHandler {
              struct Singleton {
                static let instance: CounchDataBaseHandler = CounchDataBaseHandler()
              }
             return Singleton.instance
     }

     public func createDocument(){
        
    var properties = [
            "name": "mirco",
        "email": "mirco.zeiss@gmail.com",
        "repo": "swift-couchbaselite-cheatsheet"
        ]
        var doc = self.database!.createDocument()
        var error: NSError?
      doc.putProperties(properties, error: &error)
        if (error != nil) {
           println(error)
           }
     }
    

    }



