//
//  CartViewControllerFromBadge.swift
//  SupplierEnablement

//

import UIKit

class CartViewControllerFromBadge: UIViewController , UITableViewDelegate , UITableViewDataSource {
    
    
    
    
    
    
    
    
    
    
    @IBAction func placeOrderButtonClick(sender: AnyObject) {
        
        var alert = UIAlertController(title: "THANK YOU", message: "ORDER PLACED SUCCESSFULLY", preferredStyle: UIAlertControllerStyle.Alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
        self.presentViewController(alert, animated: true, completion: nil)
    }
    

    @IBAction func backBtnClick(sender: AnyObject) {
        
        self.performSegueWithIdentifier("backToCatalogFromBadgeCart", sender:self)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell2 = tableView.dequeueReusableCellWithIdentifier("CartCellFromBadge", forIndexPath: indexPath) as! CartViewCellFromBadge
        
        return cell2
    }


}
