//
//  DetailVC.swift
//  SplitVC
//


import UIKit

class DetailVC: UIViewController
{
    
    @IBOutlet var segmentedControl: UISegmentedControl!
    @IBOutlet var container1: UIView!
    @IBOutlet var container2: UIView!
    @IBOutlet var container3: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

         container1.hidden = false
        container2.hidden = true
        container3.hidden = true
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func indexChanged(sender: UISegmentedControl)
    {
        
        if(segmentedControl.selectedSegmentIndex == 0)
        {
            container1.hidden = false
            container2.hidden = true
            container3.hidden = true
        }
            
        else if(segmentedControl.selectedSegmentIndex == 1)
        {
           
            container1.hidden = true
            container2.hidden = false
            container3.hidden = true
            //textLabel.text = "Profile selected";
        }
        else if(segmentedControl.selectedSegmentIndex == 2)
        {
           
           container1.hidden = true
           container2.hidden = true
           container3.hidden = false
           //textLabel.text = "History selected";
        }
//        else if(segmentedControl.selectedSegmentIndex == 3)
//        {
//            fun.hidden = true
//            container1.hidden = true
//            container2.hidden = true
//            textLabel.text = "mycart selected";
//        }
        else
       {
         container1.hidden = false
         container2.hidden = true
         container3.hidden = true
        }
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
