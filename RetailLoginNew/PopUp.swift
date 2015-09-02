

import UIKit
//import AFNetworking;/UIImageView+AFNetworking.h


class PopUp: UIView {
    
    func removePopUp() -> Void
    {
//        [UIView animateWithDuration:0.2 animations:^{
//            self.alpha = 0.1;
//            self.transform = CGAffineTransformMakeScale(0.01, 0.01);
//            } completion:^(BOOL finished) {
//            [self removeFromSuperview];
//            }];
        
        UIView.animateWithDuration(0.2, animations: {
            self.alpha = 0.1
            }, completion: {
                (value: Bool) in
//                self.blurBg.hidden = true
                self.removeFromSuperview()
        })
       
    }
    
    
    func forgetPwd() -> Void
    {
        let button = UIButton();
        button.setTitle("", forState: .Normal)
//        button.frame = self.bounds
        button.frame = CGRectMake(15, 25, 300, 500)
        button.backgroundColor = UIColor.blueColor()
        button.addTarget(self, action: Selector(nilLiteral: removePopUp()), forControlEvents: .TouchUpInside)
        self.addSubview(button)
        
        
/* UIButton *btnBackGround = [UIButton buttonWithType:UIButtonTypeCustom];
btnBackGround.frame = self.bounds;
[btnBackGround addTarget:self action:@selector(removePopup) forControlEvents:UIControlEventTouchUpInside];
[self addSubview:btnBackGround]; */

    }
//
//    func forgetPwd() -> Void
//    {
//        UIButton *btnBackGround = [UIButton buttonWithType:UIButtonTypeCustom];
//        btnBackGround.frame = self.bounds;
//        [btnBackGround addTarget:self action:@selector(removePopup) forControlEvents:UIControlEventTouchUpInside];
//        [self addSubview:btnBackGround];
//        
//        btnBackGround: uibu
    
    
//    - See more at: http://webindream.com/how-to-add-uibutton-programmatically-in-swift/#sthash.YdGFRA8J.dpuf
//
//    }
//
//   
//}
}