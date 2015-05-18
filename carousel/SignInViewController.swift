//
//  SignInViewController.swift
//  carousel
//
//  Created by Court Kizer on 5/12/15.
//  Copyright (c) 2015 blackislandstudio. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController {
    
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    
    @IBAction func signInButton(sender: AnyObject) {
        let alert = UIAlertView()
        let wierdAlert = UIAlertView()
        
        if emailField.text.isEmpty || passwordField.text.isEmpty {
            alert.title = "Enter Email and Password"
            alert.message = "Please enter email address and password to sign in."
            alert.addButtonWithTitle("Dismiss")
            alert.show()
        } else {
            wierdAlert.message = "Loading…"
            wierdAlert.show()
            delay(1) {
                wierdAlert.dismissWithClickedButtonIndex(0, animated: true)
                if self.emailField.text == "courtkizer@gmail.com" && self.passwordField.text == "123" {
                    println("correct")
                    self.performSegueWithIdentifier("paginationSegue", sender: self)
                } else {
                    alert.title = "Incorrect Login"
                    alert.message = "I'm sorry, but your credentials suck."
                    alert.addButtonWithTitle("Sigh")
                    alert.show()
                    self.passwordField.text = ""
                }
            }
        }
        
    }
    
    
    @IBAction func forgotPasswordButton(sender: AnyObject) {
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
            self.emailField.becomeFirstResponder()
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /*
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    // Get the new view controller using segue.destinationViewController.
    // Pass the selected object to the new view controller.
    }
    */
    
}
