//
//  ViewController.swift
//  ProtocalsDelegates
//
//  Created by murali yarramsetti on 03/10/18.
//  Copyright © 2018 murali yarramsetti. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imageIcon : UIImageView!
    @IBOutlet weak var nameLbl : UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("This is my latest code eith new branch")
    }

    @IBAction func movetoNExtController()
   {
    let storyboard = UIStoryboard(name: "Main", bundle: nil)
    
    let ivc = storyboard.instantiateViewController(withIdentifier: "BossViewController") as! BossViewController
    ivc.dataDelegate = self
    self.present(ivc, animated: true, completion: nil)
   }
}

extension ViewController : dataPassingDelegate
{
    func dataPassingWhenScreenDismissed(name: String, iconImage: UIImage, screenColor: UIColor) {
        nameLbl.text = name
        imageIcon.image = iconImage
        self.view.backgroundColor = screenColor
    }
}


