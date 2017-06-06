//
//  ViewController.swift
//  PagetoScroll
//
//  Created by Loyd Vallot on 2/18/17.
//  Copyright © 2017 Loyd's Productions. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var images = [UIImageView]()
    
    @IBOutlet weak var scrollview: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        var contentwidth: CGFloat = 0.0
        
        let scrollwidth = scrollview.frame.size.width
        
        for x in 0...2{
            let image = UIImage(named: "icon\(x).png")
            let imageview = UIImageView(image: image)
            images.append(imageview)
            
            var newx: CGFloat = 0.0 // set x value to 0
            
            newx = scrollwidth / 2 + scrollwidth * CGFloat(x) //calculate the frame and width size
            
            contentwidth += newx
            
            scrollview.addSubview(imageview)
            
            imageview.frame = CGRect(x: newx - 75, y: (view.frame.size.height / 2) - 75, width: 150, height: 150) //put the image into the center of the frame
            
        }
        
        //scrollview.backgroundColor = UIColor.purple
        scrollview.clipsToBounds = false
        
        scrollview.contentSize = CGSize(width: contentwidth, height: view.frame.size.width)

    }

}

