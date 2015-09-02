//
//  ListTableViewController.swift
//  SplitVC



import UIKit

class ListTableViewController: UITableViewController {
let names = ["Mobile","Home Appliances","Clothing","Furniture"]
    override func viewDidLoad() {
        super.viewDidLoad()

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
        return names.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("MyCell", forIndexPath: indexPath) as! UITableViewCell
     println("rowatindex")
       cell.textLabel?.text = names[indexPath.row]
       println("rowatindex2")
        return cell
    }
    
   
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
       
        if (segue.identifier == "detail") {
           
            var detail: DetailViewController
            if let navigationController = segue.destinationViewController as? UINavigationController {
                detail = navigationController.topViewController as! DetailViewController
            } else {
                detail = segue.destinationViewController as! DetailViewController
            }
            
            if let path = tableView.indexPathForSelectedRow() {
               
                detail.phone = names[path.row]
            }
        }
    }
 
}
