//
//  ViewController.swift
//  Coffee
//
//  Created by Ahmed Elkady on 10/09/2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Email: UITextField?
    
    @IBOutlet weak var PasswordText: UITextField?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Email?.addbottomborder(color: .brown, width: 0.5)
        PasswordText?.addbottomborder(color: .brown, width: 0.5)
    }


}
extension UIView{
    func addbottomborder(color:UIColor , width:CGFloat){
        let border = CALayer()
        border.backgroundColor=color.cgColor
        border.frame=CGRect(x: 0, y: self.frame.size.height-width, width: self.frame.size.width-25, height: width)
        self.layer.addSublayer(border)
    }
}

