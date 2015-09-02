//
//  DetailCustomerVC.swift
//  RetailLoginNew
//


import UIKit
import CoreData

class DetailCustomerVC: UIViewController {

    @IBOutlet weak var firstname: UILabel!
    @IBOutlet weak var lastname: UILabel!
    
    @IBOutlet weak var phoneno: UILabel!
    
    @IBOutlet weak var username: UILabel!
    var fname : String = ""
    var lname : String = ""
    var phoneNo : String = ""
    var userName: String = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        firstname.text = fname
        lastname.text = lname
        phoneno.text = phoneNo
        username.text = userName

        // Do any additional setup after loading the view.
    }
//
//    func getFetchedResultController() -> NSFetchedResultsController {
//        fetchedResultController = NSFetchedResultsController(fetchRequest: taskFetchRequest(), managedObjectContext: managedObjectContext, sectionNameKeyPath: nil, cacheName: nil)
//        return fetchedResultController
//    }
//    
//    func taskFetchRequest() -> NSFetchRequest {
//        let fetchRequest = NSFetchRequest(entityName: "Customers")
//        let sortDescriptor = NSSortDescriptor(key: "fname", ascending: true)
//        fetchRequest.sortDescriptors = [sortDescriptor]
//        return fetchRequest
//    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

   
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
//    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
//        
//        
//    }


}
