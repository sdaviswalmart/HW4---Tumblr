//
//  ComposeViewController.swift
//  HW4 - Tumblr
//
//  Created by Stephen Davis on 6/8/16.
//  Copyright © 2016 Stephen Davis. All rights reserved.
//

import UIKit

class ComposeViewController: UIViewController {
    
    @IBOutlet var circleButtons: [UIButton]!
    
    var circleButtonCenter: CGPoint!
    
    
  
    
    @IBAction func dismissModal(sender: UIButton) {
        dismissViewControllerAnimated(true, completion: nil)

    }
    
    override func viewWillAppear(animated: Bool) {
 

        
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(animated: Bool) {
        
        
        // Do any additional setup after loading the view.
    }
    
 
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

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