 #Swift -NSUserDefaults-API
Manage and access NSUserDefaults with easy way , you can save , update , delete from NSUserDefaults by using this class .

# How to use , 


Fist create instance of the class and set whoIsDelegate to self ,  this basically mean who will be the delegate .

    var localsaver = localDM(whoIsDelegate: self)

and you should implement delegate method 
      // MARK: -UserDefaultStor Delegate 
    func dataNotFound() {
    // if there is no value for this key or key not found 
        println("Data Not Found")
    }


# Add New 
localsaver.saveNew(dataDic: ["username":"ra7bi"])


# Delete
  if localsaver.deleteKey(keyForDelete: "username"){
            
            println("Key has been deleted !")
        }

# Read Data
      if  let returned = localsaver.readData(keyForData: "username")
        {
                println("Returned : \(returned)")  
        }
        
# Update
      localsaver.updateDate(keyforUpdate: "username", newValue: "NewUserName")
        
