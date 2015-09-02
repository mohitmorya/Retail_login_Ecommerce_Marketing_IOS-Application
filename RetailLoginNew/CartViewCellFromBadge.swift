//
//  CartViewCellFromBadge.swift
//  SupplierEnablement

import UIKit

class CartViewCellFromBadge: UITableViewCell {
    
    
    
    
    @IBOutlet weak var labelValueView: UILabel!
    
    @IBOutlet weak var stepper2: UIStepper!
    
    
    @IBAction func stepper2ValueChangedPress(sender: UIStepper) {
        
        labelValueView.text = Int(sender.value).description

    }
    
    
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
