//
//  AboutUsViewController.swift
//  Day3_W2019_iOS_Login
//
//  Created by MacStudent on 2019-03-06.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class AboutUsViewController: UIViewController {

    @IBOutlet weak var lbl1: UILabel!
    @IBOutlet weak var img1: UIImageView!
    @IBOutlet weak var seg1: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        //Add sengment dynamically
        seg1.insertSegment(withTitle: "Monkey", at: 3, animated: true)
    }
    
    @IBAction func btnGoHome(_ sender: UIButton) {
        let v = self.navigationController?.viewControllers[0]
        self.navigationController?.popToViewController(v!, animated: true)
        
    }
    
    @IBAction func segment1(_ sender: UISegmentedControl) {
        
        print(sender.selectedSegmentIndex)
        
        switch sender.selectedSegmentIndex
        {
        case 0:
            lbl1.text = "Cat 1"
            img1.image = UIImage(named: "images1.jpeg")
        case 1:
            lbl1.text = "Cat 2"
            img1.image = UIImage(named: "images2.jpeg")
        case 2:
            lbl1.text = "Cat 3"
            img1.image = UIImage(named: "images3.jpeg")
        case 3:
            lbl1.text = "I[m dynamic"
            img1.image = UIImage(named: "images4")
        default:
            print("Invalid Selection")
            
        }
        
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
