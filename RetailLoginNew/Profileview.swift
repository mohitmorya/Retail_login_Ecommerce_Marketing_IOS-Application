//
//  Profileview.swift
//  SplitVC
//

import Foundation
import UIKit
import CoreData


class Profileview: UIViewController
{
   
    @IBOutlet var pname: UILabel!
    @IBOutlet var psecondname: UILabel!
    @IBOutlet var pnum: UILabel!
    @IBOutlet var puname: UILabel!
    var name : String?
    let managedObjectContext = (UIApplication.sharedApplication().delegate as! AppDelegate).managedObjectContext
    override func viewDidLoad()
    {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
       //var custname : String?
        
        let defaults = NSUserDefaults.standardUserDefaults()
        name = defaults.stringForKey("userNameKey")
    
            println(name)
        
        
//    var ins = CustomerLoginVC()
//       var custname = ins.CustomerUsername.text
//        println(custname)
        
        
//        let appDel : AppDelegate = (UIApplication.sharedApplication().delegate) as AppDelegate
//        var context : NSManagedObjectContext = appDel.managedObjectContext!
//        let entityDescription = NSEntityDescription.entityForName("Customers", inManagedObjectContext: context)
//        let request = NSFetchRequest()
//        request.entity = entityDescription
//        var error: NSError?
//        var objects = context.executeFetchRequest(request,error: &error)
//        if let results = objects
//        {
//            if results.count > 0
//            {
//                let match = results[ind!.row] as NSManagedObject
//                detail.fname = match.valueForKey("fname") as String
//                detail.lname = match.valueForKey("lname") as String
//                detail.phoneNo = match.valueForKey("phoneno") as String
//                detail.userName = match.valueForKey("username") as String
//                
//            }
//            else
//            {
//                println("this is else block")
//            }
//        }
        //
         if name != nil
         {
           let entityDescription =
            NSEntityDescription.entityForName("Customers",
                inManagedObjectContext: managedObjectContext!)
            let request = NSFetchRequest()
            request.entity = entityDescription
            let pred = NSPredicate(format: "(username = %@)",name!)
            request.predicate = pred
            var error: NSError?
            var objects = managedObjectContext?.executeFetchRequest(request,
                error: &error)
            if let results = objects
                {
        
                    if results.count > 0
                    {
                        let match = results[0] as! NSManagedObject
        
                        pname.text = match.valueForKey("fname") as? String
                        psecondname.text = match.valueForKey("lname") as? String
                        pnum.text = match.valueForKey("phoneno") as? String
                        puname.text = match.valueForKey("username") as? String
                    }
//                    else
//                    {
//                        status.text = "No Match"
//                   }
                    
            }
            
            }
         else
         {
            println("invalid user name")
        }

        }
   
    
//    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?)
//        
//    {
//        if (segue.identifier == "connect")
//        {
//            
//            // let pv: Profileview = segue.destinationViewController as Profileview
//            
//            let entityDescription =
//            NSEntityDescription.entityForName("Customers",inManagedObjectContext: managedObjectContext!)
//            let request = NSFetchRequest()
//            
//            request.entity = entityDescription
//            let pred = NSPredicate(format: "(username = %@)",name!)
//            request.predicate = pred
//            var error: NSError?
//            var objects = managedObjectContext?.executeFetchRequest(request,
//                error: &error)
//            if let results = objects
//            {
//                
//                if results.count > 0
//                {
//                    let match = results[0] as NSManagedObject
//                    
//                    pname.text = match.valueForKey("fname") as? String
//                    psecondname.text = match.valueForKey("lname") as? String
//                    pnum.text = match.valueForKey("phoneno") as? String
//                    puname.text = match.valueForKey("username") as? String
//                }
//                //                    else
//                //                    {
//                //                        status.text = "No Match"
//                //                    }
//            }
//
//            
//        }
//        
//    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
//    
//

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
