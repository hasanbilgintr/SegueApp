//
//  SecondViewController.swift
//  SegueApp
//
//  Created by hasan bilgin on 20.09.2023.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var secondLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    var myName=""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //diğer taraftan erişilip data aktarımı sağlanıyor
        nameLabel.text=myName
    }
    
    
}
