//
//  SearchViewController.swift
//  HW4 - Tumblr
//
//  Created by Stephen Davis on 6/8/16.
//  Copyright © 2016 Stephen Davis. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController {
    
    @IBOutlet weak var loadingBar: UIImageView!
    @IBOutlet weak var searchFeed: UIImageView!
    
    var loading_1: UIImage!
    var loading_2: UIImage!
    var loading_3: UIImage!
    
    var images: [UIImage]!
    var animatedImage: UIImage!

    
    override func viewWillAppear (animated: Bool) {
        
        searchFeed.alpha = 0
        // Show the loading animation
        loadingBar.alpha = 1
    }


    override func viewDidAppear (animated: Bool) {
            // Delay for 2 seconds before...
            delay (2) { () -> () in
                // show the feed ImageView
                self.searchFeed.alpha = 1
                // Hide the loading animation
                self.loadingBar.alpha = 0

            }
    }


    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        // Assign images for Loading Animation
        
        loading_1 = UIImage(named: "loadingbar-1")
        loading_2 = UIImage(named: "loadingbar-2")
        loading_3 = UIImage(named: "loadingbar-3")
        
        // Put images for Loading Animation into Array
        
        images = [loading_1, loading_2, loading_3]
        
        animatedImage = UIImage.animatedImageWithImages(images, duration: 0.5)
        loadingBar.image = animatedImage


        
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
