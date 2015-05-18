//
//  IntroductionViewController.swift
//  carousel
//
//  Created by Court Kizer on 5/12/15.
//  Copyright (c) 2015 blackislandstudio. All rights reserved.
//

import UIKit

class IntroductionViewController: UIViewController {

    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var introView: UIImageView!
    
    @IBAction func createADropbox(sender: AnyObject) {
        println("Create Dropbox Button")
    }
    
    @IBAction func signInDropbox(sender: AnyObject) {
        println("Sign In Button")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView.contentSize = introView.image!.size
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
