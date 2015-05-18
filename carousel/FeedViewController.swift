//
//  FeedViewController.swift
//  carousel
//
//  Created by Court Kizer on 5/14/15.
//  Copyright (c) 2015 blackislandstudio. All rights reserved.
//


import UIKit

class FeedViewController: UIViewController {
    
    @IBOutlet weak var feedImage: UIImageView!
    @IBOutlet weak var feedNavImage: UIImageView!
    @IBOutlet weak var feedScrollView: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        feedScrollView.contentSize = feedImage.bounds.size
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
