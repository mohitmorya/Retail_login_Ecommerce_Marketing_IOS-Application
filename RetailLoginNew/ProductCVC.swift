//
//  ProductCVC.swift
//  SplitViewSample

import UIKit

let reuseIdentifier = "ProductCell"


class ProductCVC: UIViewController, UICollectionViewDelegate , UICollectionViewDataSource{
    var product = String()
    var appleImage: [String] = ["iphone1.jpg","iphone2.jpg","iphone3.jpg","iphone4.jpg","iphone5.jpeg","iphone6.jpeg","iphone7.jpeg","iphone8.jpeg","iphone9.jpeg","iphone4.jpg","iphone5.jpeg","iphone6.jpeg"]
    var samsungImage: [String] = ["Samsung1.jpg","Samsung2.jpg","Samsung3.jpg","Samsung4.jpg","Samsung5.jpeg","Samsung6.jpeg","Samsung7.jpeg","Samsung8.jpeg", "Samsung9.jpeg", "Samsung4.jpg","Samsung5.jpeg", "Samsung6.jpeg"]
    var blackberryImage: [String] = ["BB1.jpg","BB2.jpg","BB3.jpg","BB4.png", "BB5.jpg","BB6.jpeg","BB7.jpeg","BB8.jpeg","BB9.jpeg","BB2.jpg","BB3.jpg","BB4.png"]
    var motoImage: [String] = ["moto1.jpg","moto2.jpg","moto3.jpg","moto4.jpg", "moto5.jpeg","moto6.jpeg","moto7.jpeg","moto8.jpeg", "moto9.jpeg","moto2.jpg","moto3.jpg","moto4.jpg"]
    
    
    var acImage: [String] = ["ac1.jpeg","ac2.jpeg","ac3.jpeg","ac4.jpeg","ac5.jpeg","ac6.jpeg","ac7.jpeg","ac8.jpeg","ac9.jpeg","ac4.jpeg","ac5.jpeg","ac6.jpeg"]
    var refImage: [String] = ["ref1.jpeg","ref2.jpeg","ref3.jpeg","ref4.jpeg","ref5.jpeg","ref6.jpeg","ref7.jpeg","ref8.jpeg","ref9.jpeg","ref4.jpeg","ref5.jpeg","ref6.jpeg"]
    var tvImage:[String]=["tv1.jpeg","tv2.jpeg","tv3.jpeg","tv4.jpeg","tv5.jpeg","tv6.jpeg","tv7.jpeg","tv8.jpeg","tv9.jpeg","tv4.jpeg","tv5.jpeg","tv6.jpeg"]
    var microImage:[String]=["micro1.jpg","micro2.jpg","micro3.jpg","micro4.jpg","micro5.jpg","micro6.jpg","micro7.jpg","micro8.jpg","micro9.jpg","micro4.jpg","micro5.jpg","micro6.jpg"]
    
    
    var menImage:[String]=["men1.jpeg","men2.jpeg","men3.jpeg","men4.jpeg","men5.jpeg","men6.jpeg","men7.jpeg","men8.jpeg","men9.jpeg","men4.jpeg","men5.jpeg","men6.jpeg"]
    var womenImage:[String]=["women1.jpeg","women2.jpeg","women3.jpeg","women4.jpeg","women5.jpeg","women6.jpeg","women7.jpeg","women8.jpeg","women9.jpeg","women4.jpeg","women5.jpeg","women6.jpeg"]
    var kidsImage:[String]=["kids1.jpeg","kids2.jpeg","kids3.jpeg","kids4.jpeg","kids5.jpeg","kids6.jpeg","kids7.jpeg","kids8.jpeg","kids9.jpeg","kids4.jpeg","kids5.jpeg","kids6.jpeg"]
    var sportsImage:[String]=["sports1.jpg","sports2.jpg","sports3.jpg","sports4.jpg","sports5.jpg","sports6.jpg","sports7.jpg","sports1.jpg","sports9.jpg","sports4.jpg","sports5.jpg","sports6.jpg"]
    
    
    var sofaImage:[String]=["sofa1.jpg","sofa2.jpg","sofa3.jpg","sofa4.jpg","sofa5.jpg","sofa6.jpg","sofa7.jpg","sofa8.jpg","sofa9.jpg","sofa4.jpg","sofa5.jpg","sofa6.jpg"]
    var tableImage:[String]=["table1.jpg","table2.jpg","table3.jpg","table4.jpg","table5.jpg","table6.jpg","table7.jpg","table8.jpg","table9.jpg","table4.jpg","table5.jpg","table6.jpg"]
    var bedImage:[String]=["bedimage1.jpg","bedimage2.jpg","bedimage3.jpg","bedimage4.jpg","bedimage5.jpg","bedimage6.jpg","bedimage7.jpg","bedimage8.jpg","bedimage9.jpg","bedimage4.jpg","bedimage5.jpg","bedimage6.jpg"]
    var almirahImage:[String]=["almir1.jpg","almir2.jpg","almir3.jpg","almir4.jpg","almir5.jpg","almir6.jpg","almir7.jpg","almir8.jpg","almir9.jpg","almir4.jpg","almir5.jpg","almir6.jpg"]
    
    
    
    var appleLblData: [String] = ["iPhone1", "iPhone2", "iPhone3", "iPhone4", "iPhone5", "iPhone6", "iPhone7", "iPhone8", "iPhone9", "iPhone10", "iPhone11", "iPhone12"]
    var samsungLblData: [String] = ["Samsung1", "Samsung2", "Samsung3", "Samsung4", "Samsung5", "Samsung6", "Samsung7", "Samsung8", "Samsung9", "Samsung10", "Samsung11", "Samsung12"]
    var blackberryLblData: [String] = ["BlackBerry1", "BlackBerry2", "BlackBerry3", "BlackBerry4", "BlackBerry5", "BlackBerry6", "BlackBerry7", "BlackBerry8", "BlackBerry9", "BlackBerry10", "BlackBerry11", "BlackBerry12"]
    var motoLblData: [String] = ["Motorola1", "Motorola2", "Motorola3", "Motorola4", "Motorola5", "Motorola6", "Motorola7", "Motorola8", "Motorola9", "Motorola10", "Motorola11", "Motorola12"]
    
    
    var acLblData: [String] = ["Air Conditioner1", "Air Conditioner2", "Air Conditioner3", "Air Conditioner4", "Air Conditioner5", "Air Conditioner6", "Air Conditioner7", "Air Conditioner8", "Air Conditioner9", "Air Conditioner10", "Air Conditioner11", "Air Conditioner12"]
    var refLblData: [String] = ["Refrigerator1", "Refrigerator2", "Refrigerator3", "Refrigerator4", "Refrigerator5", "Refrigerator6", "Refrigerator7", "Refrigerator8", "Refrigerator9", "Refrigerator10", "Refrigerator11", "Refrigerator12"]
    var tvLblData: [String] = ["Television1", "Television2", "Television3", "Television4", "Television5", "Television6", "Television7", "Television8", "Television9", "Television10", "Television11", "Television12"]
    var microLblData: [String] = ["Microwave1", "Microwave2", "Microwave3", "Microwave4", "Microwave5", "Microwave6", "Microwave7", "Microwave8", "Microwave9", "Microwave10", "Microwave11", "Microwave12"]
    
    
    var menLblData: [String] = ["M_wear1", "M_wear2", "M_wear3", "M_wear4", "M_wear5", "M_wear6", "M_wear7", "M_wear8", "M_wear9", "M_wear10", "M_wear11", "M_wear12"]
    var womenLblData: [String] = ["W_wear1", "W_wear2", "W_wear3", "W_wear4", "W_wear5", "W_wear6", "W_wear7", "W_wear8", "W_wear9", "W_wear10", "W_wear11", "W_wear12"]
    var kidsLblData: [String] = ["K_wear1", "K_wear2", "K_wear3", "K_wear4", "K_wear5", "K_wear6", "K_wear7", "K_wear8", "K_wear9", "K_wear10", "K_wear11", "K_wear12"]
    var sportsLblData: [String] = ["S_wear1", "S_wear2", "S_wear3", "S_wear4", "S_wear5", "S_wear6", "S_wear7", "S_wear8", "S_wear9", "S_wear10", "S_wear11", "S_wear12"]
    
    
    var sofaLblData: [String] = ["Sofa1", "Sofa2", "Sofa3", "Sofa4", "Sofa5", "Sofa6", "Sofa7", "Sofa8", "Sofa9", "Sofa10", "Sofa11", "Sofa12"]
    var tableLblData: [String] = ["Table1", "Table2", "Table3", "Table4", "Table5", "Table6", "Table7", "Table8", "Table9", "Table10", "Table11", "Table12"]
    var bedLblData: [String] = ["Bed1", "Bed2", "Bed3", "Bed4", "Bed5", "Bed6", "Bed7", "Bed8", "Bed9", "Bed10", "Bed11", "Bed12"]
    var almirahLblData: [String] = ["Almirah1", "Almirah2", "Almirah3", "Almirah4", "Almirah5", "Almirah6", "Almirah7", "Almirah8", "Almirah9", "Almirah10", "Almirah11", "Almirah12"]
    
    
    var itemIdentifier1 =  String();
    
    @IBOutlet weak var CartValuelbl: UILabel!
    
    var cartItemValue = Int()
    var counter = Int()
    var cartLblValueString = String()
    
    var MyCartAlert1 = UIAlertView()
    
    @IBAction func addToCartBtnPress(sender: AnyObject) {
        
        MyCartAlert1.delegate = self
        MyCartAlert1.title = "Cart Details"
        MyCartAlert1.message = "(a) Item is Added to cart"
        MyCartAlert1.addButtonWithTitle("Cancel")
        MyCartAlert1.addButtonWithTitle("Proceed")
        MyCartAlert1.show()
        
    }
    
    
    @IBAction func MyCartBtn(sender: AnyObject) {
        
        var MyCartAlert = UIAlertView()
        MyCartAlert.title = "Add To Cart"
        MyCartAlert.message = "Want To Add To My Cart?"
        MyCartAlert.addButtonWithTitle("No")
        MyCartAlert.addButtonWithTitle("Yes")
        MyCartAlert.show()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return appleImage.count
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell2: Custom2CollectionViewCell = collectionView.dequeueReusableCellWithReuseIdentifier(reuseIdentifier, forIndexPath: indexPath) as! Custom2CollectionViewCell
        cell2.itemIdentiferCell = indexPath.row
        
        if itemIdentifier1 == "Apple" {
            
            cell2.productDetailBtn.setTitle("\(appleLblData[indexPath.row])", forState: UIControlState.Normal)
            cell2.productImage.image = UIImage(named: appleImage[indexPath.row])
            cell2.addSubview(cell2.productImage)
        }
            
        else if itemIdentifier1 == "Samsung" {
            cell2.productDetailBtn.setTitle("\(samsungLblData[indexPath.row])", forState: UIControlState.Normal)
            cell2.productImage.image = UIImage(named: samsungImage[indexPath.row])
            cell2.addSubview(cell2.productImage)
        }
            
        else if itemIdentifier1 == "Blackberry" {
            cell2.productDetailBtn.setTitle("\(blackberryLblData[indexPath.row])", forState: UIControlState.Normal)
            cell2.productImage.image = UIImage(named: blackberryImage[indexPath.row])
            cell2.addSubview(cell2.productImage)
        }
            
        else if itemIdentifier1 == "Motorola" {
            cell2.productDetailBtn.setTitle("\(motoLblData[indexPath.row])", forState: UIControlState.Normal)
            cell2.productImage.image = UIImage(named: motoImage[indexPath.row])
            cell2.addSubview(cell2.productImage)
        }
        
        
        
        
        if itemIdentifier1 == "Air Conditioner" {
            
            cell2.productDetailBtn.setTitle("\(acLblData[indexPath.row])", forState: UIControlState.Normal)
            cell2.productImage.image = UIImage(named: acImage[indexPath.row])
            cell2.addSubview(cell2.productImage)
        }
            
        else if itemIdentifier1 == "Refrigerator" {
            cell2.productDetailBtn.setTitle("\(refLblData[indexPath.row])", forState: UIControlState.Normal)
            cell2.productImage.image = UIImage(named: refImage[indexPath.row])
            cell2.addSubview(cell2.productImage)
        }
            
        else if itemIdentifier1 == "Television" {
            cell2.productDetailBtn.setTitle("\(tvLblData[indexPath.row])", forState: UIControlState.Normal)
            cell2.productImage.image = UIImage(named: tvImage[indexPath.row])
            cell2.addSubview(cell2.productImage)
        }
            
        else if itemIdentifier1 == "Microwave" {
            cell2.productDetailBtn.setTitle("\(microLblData[indexPath.row])", forState: UIControlState.Normal)
            cell2.productImage.image = UIImage(named: microImage[indexPath.row])
            cell2.addSubview(cell2.productImage)
        }
        
        
        if itemIdentifier1 == "Men" {
            
            cell2.productDetailBtn.setTitle("\(menLblData[indexPath.row])", forState: UIControlState.Normal)
            cell2.productImage.image = UIImage(named: menImage[indexPath.row])
            cell2.addSubview(cell2.productImage)
        }
            
        else if itemIdentifier1 == "Women" {
            cell2.productDetailBtn.setTitle("\(womenLblData[indexPath.row])", forState: UIControlState.Normal)
            cell2.productImage.image = UIImage(named: womenImage[indexPath.row])
            cell2.addSubview(cell2.productImage)
        }
            
        else if itemIdentifier1 == "Kids" {
            cell2.productDetailBtn.setTitle("\(kidsLblData[indexPath.row])", forState: UIControlState.Normal)
            cell2.productImage.image = UIImage(named: kidsImage[indexPath.row])
            cell2.addSubview(cell2.productImage)
        }
            
        else if itemIdentifier1 == "Sports Wear" {
            cell2.productDetailBtn.setTitle("\(sportsLblData[indexPath.row])", forState: UIControlState.Normal)
            cell2.productImage.image = UIImage(named: sportsImage[indexPath.row])
            cell2.addSubview(cell2.productImage)
        }
        
        
        
        if itemIdentifier1 == "Sofa" {
            
            cell2.productDetailBtn.setTitle("\(sofaLblData[indexPath.row])", forState: UIControlState.Normal)
            cell2.productImage.image = UIImage(named: sofaImage[indexPath.row])
            cell2.addSubview(cell2.productImage)
        }
            
        else if itemIdentifier1 == "Table" {
            cell2.productDetailBtn.setTitle("\(tableLblData[indexPath.row])", forState: UIControlState.Normal)
            cell2.productImage.image = UIImage(named: tableImage[indexPath.row])
            cell2.addSubview(cell2.productImage)
        }
            
        else if itemIdentifier1 == "Bed" {
            cell2.productDetailBtn.setTitle("\(bedLblData[indexPath.row])", forState: UIControlState.Normal)
            cell2.productImage.image = UIImage(named: bedImage[indexPath.row])
            cell2.addSubview(cell2.productImage)
        }
            
        else if itemIdentifier1 == "Almirah" {
            cell2.productDetailBtn.setTitle("\(almirahLblData[indexPath.row])", forState: UIControlState.Normal)
            cell2.productImage.image = UIImage(named: almirahImage[indexPath.row])
            cell2.addSubview(cell2.productImage)
        }
        
        
        return cell2
        
    }
    
    
    func collectionView(collectionView: UICollectionView,
        layout collectionViewLayout: UICollectionViewLayout,
        minimumLineSpacingForSectionAtIndex section: Int) -> CGFloat{
            return 2.0
            
    }
    
    func collectionView(collectionView: UICollectionView,
        layout collectionViewLayout: UICollectionViewLayout,
        minimumInteritemSpacingForSectionAtIndex section: Int) -> CGFloat{
            
            return 2.0
            
    }
    
    
    
    func alertView(alertView: UIAlertView!, clickedButtonAtIndex buttonIndex: Int){
        switch buttonIndex
        {
        case 0:
            if counter == 0{
                cartItemValue = 0
                CartValuelbl.text = toString(cartItemValue)
            }
            else {
                CartValuelbl.text = toString(counter)
                cartLblValueString = toString(counter)
                //savedValue(cartLblValueString)
                
            }
        case 1:
            goToMyCartBadge()
            println("Yes button")
        default:
            goToMyCartBadge()
            println("Yes button default")
        }
    }
    
    
    
    
    /* code for goToMyCartBadge method */
    
    func goToMyCartBadge() {
        
        println("Inside method")
        cartItemValue += 1
        counter = cartItemValue
        CartValuelbl.text = toString(cartItemValue)
        
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if (segue.identifier == "productDescriptionSegue"){
            let objDesc: ProductDescriptionVC = segue.destinationViewController as! ProductDescriptionVC
            objDesc.cellIdentifierForProductDetail = sender!.itemIdentiferCell
            objDesc.productDetails = product
            objDesc.key = itemIdentifier1
        }
    }
    
}
