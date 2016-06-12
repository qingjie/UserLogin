//
//  ViewController.swift
//  UserLogin
//
//  Created by qingjiezhao on 6/11/16.
//  Copyright © 2016 dongyaocun. All rights reserved.
//

import UIKit
import Firebase

class ViewController: UIViewController {

    @IBOutlet weak var username: UITextField!
    
    @IBOutlet weak var password: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func logIn(sender: AnyObject) {
        FIRAuth.auth()?.createUserWithEmail(username.text!, password: password.text!, completion: {
            user, error in
            if error != nil {
                self.login()
            }else{
                print("user created")
                self.login()
            }
        })
    }
    
    func login(){
        FIRAuth.auth()?.signInWithEmail(username.text!, password: password.text!, completion: {
            user, error in
            if error != nil {
                print("Incorrect")
            }else{
                print("yeah~")
            }
        })
    }

}

