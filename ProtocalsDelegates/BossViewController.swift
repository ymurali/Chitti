//
//  BossViewController.swift
//  ProtocalsDelegates
//
//  Created by murali yarramsetti on 03/10/18.
//  Copyright © 2018 murali yarramsetti. All rights reserved.
//

import UIKit
protocol dataPassingDelegate {
    func dataPassingWhenScreenDismissed (name : String , iconImage : UIImage , screenColor : UIColor)
}
class BossViewController: UIViewController {

    var dataDelegate : dataPassingDelegate!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func dismissOne()
    {
        dataDelegate.dataPassingWhenScreenDismissed(name: "Murali", iconImage: UIImage(named:"pp")!, screenColor: .red)
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func dismisTwo()
    {
        dataDelegate.dataPassingWhenScreenDismissed(name: "Mani", iconImage: UIImage(named:"sd")!, screenColor: .green)

        self.dismiss(animated: true, completion: nil)

    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
