//
//  ViewController.swift
//  SplitVC

//

import UIKit

class DetailViewController: UIViewController , UICollectionViewDelegate , UICollectionViewDataSource{
    
    
    var phone: String = ""
    
    var index = Int()
    
    var cell: CustomCollectionViewCell = CustomCollectionViewCell ()
    
    
    var tableImages: [String] = ["Mobile.png","homeappliance.jpg","clothing.jpeg","furniture.jpg"]
    var mobileCategory : [String] = ["iphone1.jpg", "Samsung1.jpg", "moto1.jpg", "BB1.jpg"]
    var homeApplianceCategory : [String] = ["ac1.jpeg", "ref1.jpeg", "tv1.jpeg", "micro1.jpg"]
    var clothingCategory : [String] = ["men1.jpeg", "women1.jpeg", "kids1.jpeg", "sports1.jpg"]
    var furnitureCategory : [String] = ["sofa1.jpg", "table1.jpg", "bedimage1.jpg", "almir1.jpg"]
    
    var defaultLblData: [String] = ["Mobile", "Home Appliances", "Clothing", "Furniture"]
    var mobileLblData: [String] = ["Apple", "Samsung",  "Blackberry","Motorola"]
    var homeLblData: [String] = ["Air Conditioner", "Refrigerator", "Television", "Microwave"]
    var clothLblData: [String] = ["Men", "Women", "Kids", "Sports Wear"]
    var furniLblData: [String] = ["Sofa", "Table", "Bed", "Almirah"]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if splitViewController?.respondsToSelector("displayModeButtonItem") == true {
            navigationItem.leftBarButtonItem = splitViewController?.displayModeButtonItem()
            navigationItem.leftItemsSupplementBackButton = true
            
        }
    }
    
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return tableImages.count
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        cell = collectionView.dequeueReusableCellWithReuseIdentifier("MyCell", forIndexPath: indexPath)  as! CustomCollectionViewCell
        cell.Productimage.image = UIImage(named: tableImages[indexPath.row])
        
        
        cell.productCellBtn.setTitle("\(defaultLblData[indexPath.row])", forState: UIControlState.Normal)
        
        if phone == "Mobile"
            
        {
            cell.productCellBtn.setTitle("\(mobileLblData[indexPath.row])", forState: UIControlState.Normal)
            cell.itemIdentifier = mobileLblData[indexPath.row];
            cell.Productimage.image = UIImage(named: mobileCategory[indexPath.row])
            cell.addSubview(cell.Productimage)
            
        }
            
        else if phone == "Home Appliances"
        {
            
            cell.productCellBtn.setTitle("\(homeLblData[indexPath.row])", forState: UIControlState.Normal)
            cell.itemIdentifier = homeLblData[indexPath.row];
            cell.Productimage.image = UIImage(named: homeApplianceCategory[indexPath.row])
            cell.addSubview(cell.Productimage)
            
        }
            
        else  if phone == "Clothing"
        {
            
            cell.productCellBtn.setTitle("\(clothLblData[indexPath.row])", forState: UIControlState.Normal)
            cell.itemIdentifier = clothLblData[indexPath.row];
            cell.Productimage.image = UIImage(named: clothingCategory[indexPath.row])
            cell.addSubview(cell.Productimage)
            
        }
            
        else if phone == "Furniture"
        {
            cell.productCellBtn.setTitle("\(furniLblData[indexPath.row])", forState: UIControlState.Normal)
            cell.itemIdentifier = furniLblData[indexPath.row];
            cell.Productimage.image = UIImage(named: furnitureCategory[indexPath.row])
            cell.addSubview(cell.Productimage)
        }
        
        return cell
    }
    
    func collectionView(collectionView: UICollectionView, didDeselectItemAtIndexPath indexPath: NSIndexPath) {
        println("Cell \(indexPath.row) selected")
        
        
    }
    
    //     func didReceiveMemoryWarning() {
    //        super.didReceiveMemoryWarning()
    //        // Dispose of any resources that can be recreated.
    //    }
    //     func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
    //        if let cell = collectionView.cellForItemAtIndexPath(indexPath) {
    //            performSegueWithIdentifier("productCellSegue", sender: cell)
    //            //println("inside did select")
    //            println("\(indexPath.row)This is indexPath")
    //            var objProductCVC : ProductCVC = ProductCVC()
    //
    //           objProductCVC.mobileBtnData = mobileLblData[indexPath.row]
    //            println("\(mobileLblData)")
    //            index = indexPath.row
    //            println("\(index)this in index for mobile app")
    //
    //        }
    //    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!){
        println("inside segue")
        
        if (  segue.identifier == "productCellSegue") {
            let objDesc: ProductCVC = segue.destinationViewController as! ProductCVC
            
            objDesc.itemIdentifier1 = sender.itemIdentifier;
            objDesc.product = phone
        }
        
        
    }
    
}


