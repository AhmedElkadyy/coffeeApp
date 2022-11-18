//
//  ViewController2.swift
//  Coffee
//
//  Created by Ahmed Elkady on 11/09/2022.
//

import UIKit

class ViewController2: UIViewController {

    @IBOutlet weak var User: UITextField!
    @IBOutlet weak var Mail: UITextField!
    @IBOutlet weak var Pass: UITextField!
    @IBOutlet weak var RePass: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        User.addbottomborder(color: .brown, width: 0.5)
        Mail.addbottomborder(color: .brown, width: 0.5)
        Pass.addbottomborder(color: .brown, width: 0.5)
        RePass.addbottomborder(color: .brown, width: 0.5)

        
    }
    

    
  
}



