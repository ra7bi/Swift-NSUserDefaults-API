// Example of using the class in ViewDidLoad


override func viewDidLoad() {
        super.viewDidLoad()
        
        var localsaver = localDM(whoIsDelegate: self)
        
        
        //localsaver.saveNew(dataDic: ["username":"ra7bi"])
        if  let returned = localsaver.readData(keyForData: "username")
        {
                println("Returned : \(returned)")  
        }
        
        // Delete Key
        
        if localsaver.deleteKey(keyForDelete: "username"){
            
            println("Key has been deleted !")
        }
        
        readRemoteJson()
        // Do any additional setup after loading the view, typically from a nib.
    }
