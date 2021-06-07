//
//  ViewController.swift
//  loginscreen
//
//  Created by Robert Carbonaro on 05/06/2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var _username: UITextField!
    @IBOutlet var _password: UITextField!
    @IBOutlet var _login_button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        LoginDo()
        
    }

    @IBAction func LoginButton(_ sender: Any) {
        
        if(_login_button.titleLabel?.text == "Logout")
        {
            _username.text = ""
            _password.text = ""
            
            LoginDo()
            return
        }
        
        let username = _username.text
        let password = _password.text
        
        if (username == "" || password == "")
        {
            return
        }
        
        DoLogin(username!, password!)
        
        
    }
    
    func DoLogin(_ user:String, _ psw:String)
    {
        // enter login validation here
        
        LoginDone()
        
        if let vc = storyboard?.instantiateViewController(identifier: "Detail") as? TableViewController {
            self.navigationController?.pushViewController(vc, animated: true)
            
            
            LoginDo()
            
            
            
            
        }
        
        
    }
    
    func LoginDo()
    {
        
        _username.text = ""
        _password.text = ""
        
        _username.isEnabled = true
        _password.isEnabled = true
        
        _login_button.setTitle("Login", for: .normal)
    }
    
    func LoginDone()
    {
        _username.isEnabled = false
        _password.isEnabled = false
        
        _login_button.setTitle("Logout", for: .normal)
        
       
    }
}

