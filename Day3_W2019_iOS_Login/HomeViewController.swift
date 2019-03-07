//
//  HomeViewController.swift
//  Day3_W2019_iOS_Login
//
//  Created by MacStudent on 2019-03-06.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    var userEmail : String?
    
    @IBOutlet weak var lblUserEmail: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        if let e = userEmail
        {
            self.lblUserEmail.text = e
        }
        self.navigationItem.hidesBackButton = true
        self.navigationItem.title = "Im dynamic title"
        self.navigationController?.hidesBarsOnTap = true
        self.navigationController?.navigationBar.isHidden = false
        self.navigationController?.navigationBar.barTintColor = UIColor.blue
    }
    
    @IBAction func btnAbout(_ sender: Any)
    {
        self.performSegue(withIdentifier: "moveToLoginSegue", sender: nil)
    }
    
   
    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       //teacher draged from btnAbout to AboutUsController with "moveToAboutUsSegue" identifier to demonstrate that even if it has a link from code of login then overrides.
        if segue.identifier == "moveToAboutUsSegue"
        {
            if let destinationVC = segue.destination as? AboutUsViewController {
                destinationVC.x = 1_000
            }
        }
        if segue.identifier == "moveToLoginSegue"
        {
            
        }
        
        
        
    }
    

}
