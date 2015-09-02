//
//  CustomerListVC.swift
//  RetailLoginNew
//

//

import UIKit
import CoreData

class CustomerListVC: UITableViewController {
 
    var people = [NSManagedObject]()
    let cell = UITableViewCell()
    
    override func viewDidLoad() {
        super.viewDidLoad()
  
        self.tableView.contentInset = UIEdgeInsetsMake(30, 0, 0, 0);
                
        println("viewWillAppear")
        let appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        let manageContext = appDelegate.managedObjectContext!
        
        let fetchRequest = NSFetchRequest(entityName:"Customers")
        var error: NSError?
        let fetchedResults = manageContext.executeFetchRequest(fetchRequest,  error: &error) as? [NSManagedObject]
        if let results = fetchedResults
        {
            people = results
            println(people)
        }
        else
        {
            println("Could not fectched \(error), \(error!.userInfo)")
        }
        
     //   people.append()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        return people.count
    }

  
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = self.tableView.dequeueReusableCellWithIdentifier("myCell", forIndexPath: indexPath) as! UITableViewCell
        let person = people[indexPath.row]
        println("Its under table view \(person)")
        cell.textLabel!.text = person.valueForKey("fname") as? String
        
        cell.tag = indexPath.row
        
        return cell
    }
    
    
        override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?)
    
        {
    
    
            println("Segue Entered")
    
    
    
            if (segue.identifier == "showDetail") {
                //  let controller: DetailsVC = (segue.destinationViewController as UISplitViewController).splitViewController as UISplitViewController
                //
                let detail: DetailCustomerVC = segue.destinationViewController as! DetailCustomerVC

                let ind = self.tableView.indexPathForSelectedRow()
//                let  = self.fetchedResultsController.objectAtIndexPath(indexPath) as NSManagedObject
                
                 let appDel: AppDelegate = (UIApplication.sharedApplication().delegate) as! AppDelegate
                
                var context : NSManagedObjectContext = appDel.managedObjectContext!
                
                let entityDescription = NSEntityDescription.entityForName("Customers", inManagedObjectContext: context)
                
                let request = NSFetchRequest()
                
                request.entity = entityDescription
                
//                let pred = NSPredicate(format: "(fname = %@)", cell.textLabel.text!)
//                request.predicate = pred
                
                var error: NSError?
                
                var objects = context.executeFetchRequest(request,error: &error)
               
                
                if let results = objects {
                    
                    if results.count > 0 {
                        let match = results[ind!.row] as! NSManagedObject
//                        
//                        name.text = match.valueForKey("fname") as String
//                        address.text = match.valueForKey("address") as String
//                        phone.text = match.valueForKey("phone") as String
//                        status.text = "Matches found: \(results.count)"
                        
                        
                        detail.fname = match.valueForKey("fname") as! String
                        detail.lname = match.valueForKey("lname") as! String
                        detail.phoneNo = match.valueForKey("phoneno") as! String
                        detail.userName = match.valueForKey("username") as! String

                        
                        
                    } else {
                        println("this is else block")
                    }
                }
    
            }
            }

    
    
   
//    override func viewWillAppear(animated: Bool) {
//        super.viewWillAppear(animated)
//        
//    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

}
