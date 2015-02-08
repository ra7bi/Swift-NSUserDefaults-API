//
//  localStor.swift
//  Remote Json
//
//  Created by fahad alrahbi on 08/02/15.
//  Copyright (c) 2015 X2coder. All rights reserved.
//

import Foundation

protocol localStorageProtocol {
    
    func dataNotFound()
    
}
class localDM:localStorageProtocol {
    
    var localDef = NSUserDefaults()
    var delegate:localStorageProtocol?
    
    init(whoIsDelegate:localStorageProtocol)
    {
            delegate = whoIsDelegate
        
    }
    
    func saveNew(#dataDic:NSDictionary)
    
        {
            
        
        self.localDef.setValuesForKeysWithDictionary(dataDic)
            
        }
    
    
    func readData(#keyForData:NSString)->NSString?
    {
        
        if  let returnedData: NSString = self.localDef.valueForKey(keyForData) as? NSString
        {
            
            return returnedData as NSString
        }else{
            delegate?.dataNotFound()
        }
        return nil
    }
    
    
    // Delete Key
    func deleteKey(#keyForDelete:NSString)->Bool
    {
        
       if let checkFirst:NSString = self.readData(keyForData: keyForDelete)
        {
            self.localDef.removeObjectForKey(keyForDelete)
            return true
            
       }else{
        return false
        }
        
    }
    
    
    func dataNotFound()
    {
        
        
    }
    
}
