//
//  CartViewController.swift
//  SupplierEnablement

//

import UIKit

class CartViewController: UIViewController , UITableViewDelegate , UITableViewDataSource {
    
    
    
    var toPassDescription = String()
    var toPassImage = UIImage()
    
    
    
    
    @IBAction func placeOrderButtonPress(sender: AnyObject) {
        
        var alert = UIAlertController(title: "THANK YOU", message: "ORDER PLACED SUCCESSFULLY", preferredStyle: UIAlertControllerStyle.Alert)
        var okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.Default) {
            UIAlertAction in
            self.performSegueWithIdentifier("showHistory", sender: self)
            println("OK Pressed")
        }
        alert.addAction(okAction)
        //alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
        self.presentViewController(alert, animated: true, completion: nil)
        
    }
    
    
    @IBAction func backbuttonPress(sender: AnyObject) {
        
        self.performSegueWithIdentifier("GoToBackFromCart", sender:self)
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
        let cell = tableView.dequeueReusableCellWithIdentifier("CartTableCell", forIndexPath: indexPath) as! CartViewCell
        println("\(toPassImage)To pass image")
        if var label1 = cell.productTitleText{
          
                label1.text = toPassDescription
            }
        
        if var label2 = cell.productCartImage {
            
            label2.image = toPassImage
        
        }

        
        return cell
        
    }
    
}
