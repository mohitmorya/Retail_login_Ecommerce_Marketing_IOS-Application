//
//  CustomerRegisterVC.swift
//  RetailLoginNew

//

import UIKit
import CoreData

class CustomerRegisterVC: UIViewController {

    @IBOutlet weak var CustomerRegisterFname: UITextField!
    @IBOutlet weak var CustomerRegisterLname: UITextField!
    
    @IBOutlet weak var CustomerRegisterUsername: UITextField!
    
    @IBOutlet var CustomerRegisterPassword: UITextField!
    
    @IBOutlet weak var CustomerRegisterPhoneno: UITextField!
    
    @IBOutlet weak var Customerconfirmpwd: UITextField!
    
 
    @IBAction func CustomerRegisterSubmit(sender: AnyObject) {
        
        
        
        var CustFname = CustomerRegisterFname.text
        var CustLname = CustomerRegisterLname.text
        var CustUsername = CustomerRegisterUsername.text
        var CustPassword = CustomerRegisterPassword.text
        var CustPhoneno = CustomerRegisterPhoneno.text
        
        
        if CustFname.isEmpty || CustLname.isEmpty || CustUsername.isEmpty || CustPassword.isEmpty || CustPhoneno.isEmpty
            
        {
            //display an alert message
            
            //            displayAlertMessage(" All fields are required to be filled.");
            var alert = UIAlertController(title: "Alert", message: "All fields are required to be filled.", preferredStyle: UIAlertControllerStyle.Alert)
            alert.addAction(UIAlertAction(title: "Click", style: UIAlertActionStyle.Default, handler: nil))
            self.presentViewController(alert, animated: true, completion: nil)
            
            
            return;
        }
        if CustomerRegisterPassword.text == Customerconfirmpwd.text
        {
            let appDel: AppDelegate = (UIApplication.sharedApplication().delegate) as! AppDelegate
            
            let context:NSManagedObjectContext = appDel.managedObjectContext!
            
            var newUser = NSEntityDescription.insertNewObjectForEntityForName("Customers", inManagedObjectContext: context)as! NSManagedObject
            
            newUser.setValue("" + CustomerRegisterFname.text, forKey: "fname")
            
            newUser.setValue("" + CustomerRegisterLname.text, forKey:  "lname")
            
            newUser.setValue("" + CustomerRegisterUsername.text, forKey: "username")
            
            newUser.setValue("" + CustomerRegisterPassword.text, forKey: "password")
            
            newUser.setValue("" + CustomerRegisterPhoneno.text, forKey: "phoneno")
            
            
            
            
            context.save(nil)
            
            println("\(newUser)")
            println("Data Saved.")
            
        }
        else
        {
            var alert = UIAlertController(title: "Alert", message: "Password does not match", preferredStyle: UIAlertControllerStyle.Alert)
            alert.addAction(UIAlertAction(title: "Click", style: UIAlertActionStyle.Default, handler: nil))
            self.presentViewController(alert, animated: true, completion: nil)

        }
      

        

    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
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
