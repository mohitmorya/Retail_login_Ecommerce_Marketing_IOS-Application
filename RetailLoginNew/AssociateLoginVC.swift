//
//  AssociateLoginVC.swift
//  RetailLoginNew


import UIKit

class AssociateLoginVC: UIViewController {
    
    var arrAssociate : NSMutableArray = []
    
    var arrUser : NSMutableArray = []
    
    var arrPwd : NSMutableArray = []

    
    
    var strUserName : NSString = ""
    
    var strPassWord : NSString = ""
    
    var strStatus: NSString = ""
    

    
    
    
    @IBOutlet weak var AssociateUsername: UITextField!
    
    @IBOutlet weak var AssociatePassword: UITextField!
    override func viewDidLoad()
    {
        super.viewDidLoad()
      
        
        jsonParsing()
//        println(arrAssociate)
        
        
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func AssociateSignIn(sender: AnyObject)
    
    {
        
        var vUsername = AssociateUsername.text
        var vPassword = AssociatePassword.text
    
        if vUsername.isEmpty || vPassword.isEmpty
        {
            //display an alert message
            var failAlert = UIAlertController(title: "Alert", message: "Both fields are required", preferredStyle: UIAlertControllerStyle.Alert)
            let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil)
            failAlert.addAction(okAction)
            self.presentViewController(failAlert, animated: true, completion: nil)

                     //return;
        }
        
        else
        {
            var flag = false
            for var i = 0; i<arrAssociate.count; i++
            {
                strUserName = arrAssociate[i] .valueForKey("Username") as! NSString
                
                strPassWord = arrAssociate[i] .valueForKey("Password") as! NSString
                
//                strStatus = arrAssociate[i] .valueForKey("status") as NSString
                
                if(vUsername == strUserName && vPassword == strPassWord)
                {
                    flag = true
                    println(strUserName)
                    println(strPassWord)
                    
//                    break
                }
                
                
               
            }
            if flag != true
            {
                var failAlert = UIAlertController(title: "Alert", message: "Invalid", preferredStyle: UIAlertControllerStyle.Alert)
                let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil)
                failAlert.addAction(okAction)
                self.presentViewController(failAlert, animated: true, completion: nil)
            }
            
            
        }
            
//        else
//        {
//            for var i = 0; i < arrAssociate.count; i++
//             // for  (i,j) in dict
//            {
//                
//                strUserName = arrAssociate[i] .valueForKey("Username") as NSString
//                
////                arrUserPwd.addObject((dict.valueForKey("Username") as NSArray) .objectAtIndex(i))
//                
//                arrUser.addObject(strUserName)
//                //println(strUserName)
//                strPassWord = arrAssociate[i] .valueForKey("Password") as NSString
//                
//                arrPwd.addObject(strPassWord)
////                arrPwd.addObject((dict.valueForKey("Password") as NSArray) .objectAtIndex(i))
//                
//                println(strUserName)
//                
//                println(strPassWord)
//
//            }
//            
//            for var i = 0; i < arrUser.count; i++
//            {
//                strChckUserName = arrUser[i]  as NSString
//                
//                strChckPassWord = arrPwd[i]  as NSString
//                
//                if(vUsername != strChckUserName || vPassword != strChckPassWord)
//                {
//                    //                  println("Invalid")
//                    
//                    var failAlert = UIAlertController(title: "Alert", message: "Invalid", preferredStyle: UIAlertControllerStyle.Alert)
//                    let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil)
//                    failAlert.addAction(okAction)
//                    self.presentViewController(failAlert, animated: true, completion: nil)
//                    
//                    
//                    // flag = true
//                    
//                    println(strUserName)
//                    println(strPassWord)
//                    
//                    println("under this block")
//                    // break
//                }
//                    //
//                    //  else if vUsername != strUserName || vPassword != strPassWord
//                    
//                else
//                {
//                    // println("Invalid")
//                    
//                    println(strUserName)
//                    println(strPassWord)
//                    
//                    println("under this block")
//                    
//                    //                    var failAlert = UIAlertController(title: "Alert", message: "Invalid", preferredStyle: UIAlertControllerStyle.Alert)
//                    //                        let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil)
//                    //                        failAlert.addAction(okAction)
//                    //                        self.presentViewController(failAlert, animated: true, completion: nil)
//                }
//                
//                //                else
//                //                {
//                //
//                //                    var failAlert = UIAlertController(title: "Alert", message: "Invalid", preferredStyle: UIAlertControllerStyle.Alert)
//                //                    let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil)
//                //                    failAlert.addAction(okAction)
//                //                    self.presentViewController(failAlert, animated: true, completion: nil)
//                //
//                //                }
//            }
//            
//
//        }
      
        
    }
    @IBAction func AssociateForgotpw(sender: AnyObject) {
        let actionSheetController: UIAlertController = UIAlertController(title: "", message: "Enter your registered email-id", preferredStyle: .Alert)
        
        //Create and add the Cancel action
        let cancelAction: UIAlertAction = UIAlertAction(title: "Cancel", style: .Cancel) { action -> Void in
            //Do some stuff
        }
        actionSheetController.addAction(cancelAction)
        //Create and an option action
        let nextAction: UIAlertAction = UIAlertAction(title: "OK", style: .Default) { action -> Void in
            //Do some other stuff
            var failAlert = UIAlertController(title: "", message: "New password link has been sent to your registered email id", preferredStyle: UIAlertControllerStyle.Alert)
            let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil)
            failAlert.addAction(okAction)
            self.presentViewController(failAlert, animated: true, completion: nil)
            
        }
        
        actionSheetController.addAction(nextAction)
        //Add a text field
        actionSheetController.addTextFieldWithConfigurationHandler { textField -> Void in
            //TextField configuration
            textField.textColor = UIColor.blueColor()
        }
        
        //Present the AlertController
        self.presentViewController(actionSheetController, animated: true, completion: nil)
        
    }
    
    func alert(alertView: UIAlertView!, clickedButtonAtIndex buttonIndex: Int) {
        
        switch buttonIndex {
            
        default:
            if (alertView.tag == 1) {
                
            }
            
        }
    }
    
    
    func jsonParsing()
    {
        let path: NSString = NSBundle.mainBundle().pathForResource("associate", ofType: "json")!
        
        var data : NSData = NSData(contentsOfFile: path as String, options: NSDataReadingOptions.DataReadingMapped, error: nil)!
        
        var dict: NSDictionary! = NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions.MutableContainers, error: nil) as! NSDictionary
        
        
        for var i = 0 ; i < (dict.valueForKey("Associate") as! NSArray).count ; i++
        {
            arrAssociate.addObject((dict.valueForKey("Associate") as! NSArray) .objectAtIndex(i))
             //dict.addObject((dict.valueForKey("Associate") as NSArray) .objectAtIndex(i))

       
        }

       

//
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
