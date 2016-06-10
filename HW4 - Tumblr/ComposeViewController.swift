//
//  ComposeViewController.swift
//  HW4 - Tumblr
//
//  Created by Stephen Davis on 6/8/16.
//  Copyright © 2016 Stephen Davis. All rights reserved.
//

import UIKit

class ComposeViewController: UIViewController {
    
        
    
    @IBOutlet weak var textButton: UIButton!
    @IBOutlet weak var photoButton: UIButton!
    @IBOutlet weak var quoteButton: UIButton!
    @IBOutlet weak var linkButton: UIButton!
    @IBOutlet weak var chatButton: UIButton!
    @IBOutlet weak var videoButton: UIButton!


  
    
    @IBAction func dismissModal(sender: UIButton) {
        dismissViewControllerAnimated(false, completion: nil)
        
    }
    
  
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        textButton.transform = CGAffineTransformMakeTranslation(0,500)
        photoButton.transform = CGAffineTransformMakeTranslation(0,500)
        quoteButton.transform = CGAffineTransformMakeTranslation(0,500)
        linkButton.transform = CGAffineTransformMakeTranslation(0,500)
        chatButton.transform = CGAffineTransformMakeTranslation(0,500)
        videoButton.transform = CGAffineTransformMakeTranslation(0,400)

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        //Animate with Duration
        
        UIView.animateWithDuration(
            0.3,delay: 0, options: .CurveEaseInOut, animations: {
                self.textButton.transform = CGAffineTransformMakeTranslation(0,0)
            },
            completion: nil)
        
    
        UIView.animateWithDuration(
            0.3,delay: 0.1, options: .CurveEaseInOut, animations: {
                self.photoButton.transform = CGAffineTransformMakeTranslation(0,0)
            },
            completion: nil)
        
        UIView.animateWithDuration(
            0.3,delay: 0.2, options: .CurveEaseInOut, animations: {
                self.quoteButton.transform = CGAffineTransformMakeTranslation(0,0)
            },
            completion: nil)
        
        UIView.animateWithDuration(
            0.3,delay: 0.3, options: .CurveEaseInOut, animations: {
                self.linkButton.transform = CGAffineTransformMakeTranslation(0,0)
            },
            completion: nil)
        
        UIView.animateWithDuration(
            0.3,delay: 0.4, options: .CurveEaseInOut, animations: {
                self.chatButton.transform = CGAffineTransformMakeTranslation(0,0)
            },
            completion: nil)
        UIView.animateWithDuration(
            0.3,delay: 0.5, options: .CurveEaseInOut, animations: {
                self.videoButton.transform = CGAffineTransformMakeTranslation(0,0)
            },
            completion: nil)
}


    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        
        UIView.animateWithDuration(0.4, animations: {
        self.textButton.transform = CGAffineTransformMakeTranslation(0,0)
        self.photoButton.transform = CGAffineTransformMakeTranslation(0,0)
        self.quoteButton.transform = CGAffineTransformMakeTranslation(0,0)
        self.linkButton.transform = CGAffineTransformMakeTranslation(0,0)
        self.chatButton.transform = CGAffineTransformMakeTranslation(0,0)
        self.videoButton.transform = CGAffineTransformMakeTranslation(0,0)
            
        })

    }
    
    override func viewDidDisappear(animated: Bool) {
        super.viewDidDisappear(animated)
        
        UIView.animateWithDuration(0.4, animations: {

        self.textButton.transform = CGAffineTransformMakeTranslation(0,-400)
        self.photoButton.transform = CGAffineTransformMakeTranslation(0,-400)
        self.quoteButton.transform = CGAffineTransformMakeTranslation(0,-400)
        self.linkButton.transform = CGAffineTransformMakeTranslation(0,-400)
        self.chatButton.transform = CGAffineTransformMakeTranslation(0,-400)
        self.videoButton.transform = CGAffineTransformMakeTranslation(0,-400)
        })

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
