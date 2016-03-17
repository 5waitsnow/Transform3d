//
//  ViewController.swift
//  Transfom3D
//
//  Created by Cz on 16/3/17.
//  Copyright © 2016年 Cz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
        let imageView = UIImageView(image: UIImage(named: "doraemon_stamps_002_o"))
        imageView.frame = CGRectMake(0, 0, 400, 200)
        imageView.contentMode = .ScaleAspectFit
        imageView.center = view.center
        
        print(imageView.frame)
        view.addSubview(imageView)
        
        imageView.layer.position = CGPointMake(imageView.frame.origin.x, imageView.frame.origin.y+imageView.frame.size.height/2)
        imageView.layer.anchorPoint = CGPointMake(0, 0.5)
        UIView.animateWithDuration(1) { () -> Void in
            imageView.layer.transform = CATransform3DMakeRotation(-45, 0, 1, 0)
            print(imageView.frame)
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

