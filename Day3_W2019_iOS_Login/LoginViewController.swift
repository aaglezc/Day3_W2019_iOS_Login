//
//  ViewController.swift
//  Day3_W2019_iOS_Login
//
//  Created by MacStudent on 2019-03-06.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var lblemail: UITextField!
    @IBOutlet weak var lblpwd: UITextField!
    @IBOutlet weak var sw1: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func prepare(for segue:UIStoryboardSegue, sender : Any?)
    {
        
    }

    @IBAction func btnLogin(_ sender: UIButton)
    {
        let email = self.lblemail.text
        let pwd = self.lblpwd.text
        
        //let alert = UIAlertController(title: "Login Fail", message: nil, preferredStyle: .alert)
        
        if (email == "a@a.com" && pwd == "123" )
        {
            print("success")
            if (sw1.isOn)
            {
                print("write code to remmeber userId and pwd ")
            }
            else
            {
                print("Remove userId/pwd if previously remembered ")
            }
            //Move to another screen
            
            let sb = UIStoryboard(name: "Main", bundle: nil)
            let homeVC = sb.instantiateViewController(withIdentifier: "homeVC") as! HomeViewController
            
            self.navigationController?.pushViewController(homeVC, animated: true)
            //self.present(homeVC, animated: true)
            
            
        }
        else
        {
            //Show alert here
            print("Show alert controller  with message User/Pwd Invalid")
            
           // alert.addTextField(configurationHandler: <#T##((UITextField) -> Void)?##((UITextField) -> Void)?##(UITextField) -> Void#>)
            
            
            //alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { action in
                
          
            //}))
            //self.present(alert, animated: true)
            
        }
        
       
        

    }
    
}

