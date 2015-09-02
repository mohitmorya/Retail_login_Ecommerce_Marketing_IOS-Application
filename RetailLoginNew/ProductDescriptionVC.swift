//
//  ProductDescriptionVC.swift
//  SplitVC

import UIKit

class ProductDescriptionVC: UIViewController {
    var cellIdentifierForProductDetail = Int()
    var arrDict : NSMutableArray = []
    var productDetails = String()
    var arrDict1 : NSMutableArray = []
    var key = String()
    var cost = String()

    var ProductDescriptionText = String()
    var ProductImageInFrameCart = UIImage()
    
    @IBOutlet weak var productImage: UIImageView!
    
    
    @IBAction func addToCartButtonTapped(sender: UIButton) {
        self.performSegueWithIdentifier("GoToCartFrmAddButton", sender:self)
    }
    
    
    @IBAction func removeFromCartButtonTapped(sender: UIButton) {
        self.performSegueWithIdentifier("GoToCartFrmRemoveButton", sender:self)
    }
    
    @IBOutlet weak var productDescription: UITextView!
    
    
    @IBOutlet weak var costOfProduct: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        jsonParsing()
        
        var desc = arrDict[cellIdentifierForProductDetail].valueForKey("Description") as! String;
        var desc1 = arrDict[cellIdentifierForProductDetail].valueForKey("ImageName") as! String;
        
        var cost = arrDict[cellIdentifierForProductDetail].valueForKey("Cost") as! String;
        println("\(cost)This is cost of product")
        // var des2 = arrDict1[cellIdentifierForProductDetail].valueForKey("Description") as! String;
        // Do any additional setup after loading the view.
        productDescription.text = String(desc)
        ProductDescriptionText = productDescription.text
        productImage.image = UIImage(named: desc1)
        costOfProduct.text = String(cost)
         ProductImageInFrameCart = productImage.image!
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func jsonParsing() {
        
        let path :NSString = NSBundle.mainBundle().pathForResource("productDescription", ofType: "json")!
        var data : NSData = NSData(contentsOfFile: path as String, options: NSDataReadingOptions.DataReadingMapped, error: nil)!
        var dict: NSDictionary! = NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions.MutableContainers, error: nil) as! NSDictionary
        if productDetails == "Mobile" {
            
            for var i = 0 ; i < (dict.valueForKey(key) as! NSArray).count ; i++
            {
                arrDict.addObject((dict.valueForKey(key) as! NSArray) .objectAtIndex(i))
               // cost = arrDict.addObject((dict.valueForKey("Cost") )! .objectAtIndex(i)) as! String
                // arrDict1.addObject((dict.valueForKey("SAMSUNG") as! NSArray) .objectAtIndex(i))
                
            }
            
            
            println("\(arrDict)This is array dict")
        }
        if productDetails == "Home Appliances" {
            
            for var i = 0 ; i < (dict.valueForKey(key) as! NSArray).count ; i++
            {
                arrDict.addObject((dict.valueForKey(key) as! NSArray) .objectAtIndex(i))
                //arrDict.addObject((dict.valueForKey("ImageName") as! NSArray) .objectAtIndex(i))
                // arrDict1.addObject((dict.valueForKey("SAMSUNG") as! NSArray) .objectAtIndex(i))
                
            }
            
            
            println("\(arrDict)This is array dict")
        }
        
        if productDetails == "Clothing" {
            
            for var i = 0 ; i < (dict.valueForKey(key) as! NSArray).count ; i++
            {
                arrDict.addObject((dict.valueForKey(key) as! NSArray) .objectAtIndex(i))
                //arrDict.addObject((dict.valueForKey("ImageName") as! NSArray) .objectAtIndex(i))
                // arrDict1.addObject((dict.valueForKey("SAMSUNG") as! NSArray) .objectAtIndex(i))
                
            }
            
            
            println("\(arrDict)This is array dict")
        }
        
        if productDetails == "Furniture" {
            
            for var i = 0 ; i < (dict.valueForKey(key) as! NSArray).count ; i++
            {
                arrDict.addObject((dict.valueForKey(key) as! NSArray) .objectAtIndex(i))
                //arrDict.addObject((dict.valueForKey("ImageName") as! NSArray) .objectAtIndex(i))
                // arrDict1.addObject((dict.valueForKey("SAMSUNG") as! NSArray) .objectAtIndex(i))
                
            }
            
            
            println("\(arrDict)This is array dict")
        }
        
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?)
    {
        if (segue.identifier == "GoToCartFrmAddButton") {
            var passdata: CartViewController = segue.destinationViewController as! CartViewController;
            
            passdata.toPassDescription = ProductDescriptionText
            passdata.toPassImage = ProductImageInFrameCart
            //passdata.toPassAmount = amountLabelText
            
        }
    }
    
}
