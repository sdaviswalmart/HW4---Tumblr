//
//  TabViewViewController.swift
//  HW4 - Tumblr
//
//  Created by Stephen Davis on 6/8/16.
//  Copyright © 2016 Stephen Davis. All rights reserved.
//

import UIKit

class TabBarViewController: UIViewController {

    @IBOutlet weak var contentView: UIView!
    @IBOutlet var buttons: [UIButton]!
    
    var homeViewController: UIViewController!
    var searchViewController: UIViewController!
    var accountViewController: UIViewController!
    var trendingViewController: UIViewController!
    

    
    var viewControllers: [UIViewController]!
    
    var selectedIndex: Int = 0
    

    

    @IBAction func didPressCompose(sender: UIButton) {
        let mainStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let userVC = mainStoryboard.instantiateViewControllerWithIdentifier("composeView") as! ComposeViewController
        presentViewController(userVC, animated: true, completion: nil)


    }
    
    @IBAction func didPressTab(sender: UIButton) {
        

        
        ////SETUP ACCESS TO VC & BUTTON STATE////
        
        //Keep track of the previous button
        let previousIndex = selectedIndex
        
        //Set the index to the tag value of which ever button was tapped.
        selectedIndex = sender.tag
        
        //Access your previous button and set it to the non-selected state.
        buttons [previousIndex].selected = false
        
        //Access the previous View Controller
        let previousVC = viewControllers [previousIndex]
        
        /////REMOVE PREVIOUS VC  & SET BUTTON STATE////
        
        //Remove the previous View Controller
        previousVC.willMoveToParentViewController(nil)
        previousVC.view.removeFromSuperview()
        previousVC.removeFromParentViewController()
        
        
        /////ADD NEW VC & SET BUTTON STATE////
        
        //Access current selected button
        sender.selected = true

        //Access current View Controller
        let vc = viewControllers[selectedIndex]
        
        //Add the new View Controller
        addChildViewController(vc)
        
        //Adjust size of View Controller to match Content View

        vc.view.frame = contentView.bounds
        contentView.addSubview(vc.view)
        vc.didMoveToParentViewController(self)


    }
    


    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
    

        // Do any additional setup after loading the view.
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        homeViewController = storyboard.instantiateViewControllerWithIdentifier ("homeView")
        searchViewController = storyboard.instantiateViewControllerWithIdentifier ("searchView")
        accountViewController = storyboard.instantiateViewControllerWithIdentifier("accountView")
        trendingViewController = storyboard.instantiateViewControllerWithIdentifier ("trendingView")
        
        viewControllers = [homeViewController, searchViewController, accountViewController, trendingViewController]
        
        
        // Set the initial Tab

        buttons[selectedIndex].selected = true
        didPressTab(buttons[selectedIndex])
        

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
