//
//  CartViewCell.swift

import UIKit

class CartViewCell: UITableViewCell {

    
    @IBOutlet weak var productCartImage: UIImageView!
    
    @IBOutlet weak var productTitleText: UILabel!
    
    @IBOutlet weak var productDescriptionText: UILabel!
    
    
    
    
    @IBOutlet weak var labelView: UILabel!
    
    @IBOutlet weak var stepper: UIStepper!
    
    @IBAction func stepperValueChanged(sender: UIStepper) {
        labelView.text = Int(sender.value).description
        
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
