//
//  CustomerLoginVC.swift
//  RetailLoginNew


import UIKit
import CoreData

class CustomerLoginVC: UIViewController {

    var popViewController : PopUpViewControllerSwift!
     let defaults = NSUserDefaults.standardUserDefaults()
    
    @IBOutlet weak var CustomerPassword: UITextField!
    
    @IBOutlet weak var CustomerUsername: UITextField!
    
    @IBAction func CustomerSignIn(sender: AnyObject) {
        
        var CustUsername = CustomerUsername.text
        var CustPassword = CustomerPassword.text
        
        let appDel: AppDelegate = (UIApplication.sharedApplication().delegate) as! AppDelegate
        var context : NSManagedObjectContext = appDel.managedObjectContext!
        var request1 = NSFetchRequest(entityName: "Customers")
        var newUser = NSEntityDescription.entityForName("Customers", inManagedObjectContext: context)
        var predicate = NSPredicate(format: "username == %@ AND password == %@",self.CustomerUsername.text, self.CustomerPassword.text)
        request1.predicate = predicate
        var result : NSArray = context.executeFetchRequest(request1, error: nil)!
        println("\(result.count)")
        if (result.count > 0)
        {
//            println("Success")
//            var failAlert = UIAlertController(title: "Alert", message: "Successfully signed in", preferredStyle: UIAlertControllerStyle.Alert)
//            let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil)
//            failAlert.addAction(okAction)
//            self.performSegueWithIdentifier("nextView", sender: self)
            
            defaults.setObject(CustUsername, forKey: "userNameKey")
            let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            let nextViewController = storyBoard.instantiateViewControllerWithIdentifier("DetailVC") as! DetailVC
            
           // self.presentViewController(failAlert, animated: true, completion: nil)
            self.presentViewController(nextViewController, animated: true, completion: nil)
            

        }
        else
        {
            println("failure")
            var failAlert = UIAlertController(title: "Alert", message: "Your username or password is incorrect.", preferredStyle: UIAlertControllerStyle.Alert)
            let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil)
            failAlert.addAction(okAction)
            self.presentViewController(failAlert, animated: true, completion: nil)
        }
        
        
    }
    
    
    @IBAction func CustomerRegister(sender: AnyObject) {
    }
    
    @IBAction func Customerforgotpw(sender: AnyObject) {
        
        var failAlert = UIAlertController(title: "Alert", message: "New password link has been sent to your registered email id", preferredStyle: UIAlertControllerStyle.Alert)
        let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil)
        failAlert.addAction(okAction)
        self.presentViewController(failAlert, animated: true, completion: nil)
        
//        if (UIDevice.currentDevice().userInterfaceIdiom == .Pad)
//        {
//            self.popViewController = PopUpViewControllerSwift(nibName: "PopUpViewController_iPad", bundle: nil)
//            self.popViewController.title = "This is a popup view"
//            self.popViewController.showInView(self.view, withImage: UIImage(named: "typpzDemo"), withMessage: "You just triggered a great popup window", animated: true)
//        } else
//        {
//            if UIScreen.mainScreen().bounds.size.width > 320 {
//                if UIScreen.mainScreen().scale == 3 {
//                    self.popViewController = PopUpViewControllerSwift(nibName: "PopUpViewController_iPhone6Plus", bundle: nil)
//                    self.popViewController.title = "This is a popup view"
//                    self.popViewController.showInView(self.view, withImage: UIImage(named: "typpzDemo"), withMessage: "You just triggered a great popup window", animated: true)
//                } else {
//                    self.popViewController = PopUpViewControllerSwift(nibName: "PopUpViewController_iPhone6", bundle: nil)
//                    self.popViewController.title = "This is a popup view"
//                    self.popViewController.showInView(self.view, withImage: UIImage(named: "typpzDemo"), withMessage: "You just triggered a great popup window", animated: true)
//                }
//            } else {
//                self.popViewController = PopUpViewControllerSwift(nibName: "PopUpViewController", bundle: nil)
//                self.popViewController.title = "This is a popup view"
//                self.popViewController.showInView(self.view, withImage: UIImage(named: "typpzDemo"), withMessage: "You just triggered a great popup window", animated: true)
//            }
//        }
        
    }
    @IBOutlet weak var CustomerRegister: UIButton!
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
