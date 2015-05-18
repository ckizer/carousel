//
//  PaginationOnboardingViewController.swift
//  carousel
//
//  Created by Court Kizer on 5/12/15.
//  Copyright (c) 2015 blackislandstudio. All rights reserved.
//

import UIKit

class PaginationOnboardingViewController: UIViewController {

    @IBOutlet weak var paginationScrollView: UIScrollView!
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var getStartedButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.getStartedButton.hidden=true
        
        //paginationScrollView.delegate = self
        paginationScrollView.contentSize = CGSize(width: 1280, height: 568)
        
        
        // Do any additional setup after loading the view.
    }

    
    func scrollViewDidEndDecelerating(scrollView: UIScrollView!) {
        // Get the current page based on the scroll offset
        var page : Int = Int(round(paginationScrollView.contentOffset.x / 320))
        
        // Set the current page, so the dots will update
        pageControl.currentPage = page
        
        if pageControl.currentPage == 3 {
            self.pageControl.hidden = true
            self.getStartedButton.hidden = false
        } else {
            pageControl.hidden = false
            self.getStartedButton.hidden = true
        }
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
