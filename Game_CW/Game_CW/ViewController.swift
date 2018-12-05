//
//  ViewController.swift
//  Game_CW
//
//  Created by Kabir on 03/12/2018.
//  Copyright © 2018 Kabir. All rights reserved.
//

import UIKit
class ViewController: UIViewController {
    
    
    
    
    
    @IBOutlet weak var Plane: UIImageView!
    
    @IBOutlet weak var roadImage: UIImageView!
    

    @IBOutlet weak var treeImage: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //moving road array
        var imageArray: [UIImage]!
        
        imageArray = [UIImage(named: "road1.png")!,
                      UIImage(named: "road2.png")!,
                      UIImage(named: "road3.png")!,
                      UIImage(named: "road4.png")!,
                      UIImage(named: "road5.png")!,
                      UIImage(named: "road6.png")!,
                      UIImage(named: "road7.png")!,
                      UIImage(named: "road8.png")!,
                      UIImage(named: "road9.png")!,
                      UIImage(named: "road10.png")!,
                      UIImage(named: "road11.png")!,
                      UIImage(named: "road12.png")!,
                      UIImage(named: "road13.png")!,
                      UIImage(named: "road14.png")!,
                      UIImage(named: "road15.png")!,
                      UIImage(named: "road16.png")!,
                      UIImage(named: "road17.png")!,
                      UIImage(named: "road18.png")!,
                      UIImage(named: "road19.png")!,]
        
        roadImage.image = UIImage.animatedImage(with: imageArray, duration: 4)
        
        //moving road array
        var _: [UIImage]!
        
        imageArray = [UIImage(named: "tree1.png")!,
                      UIImage(named: "tree2.png")!,
                      UIImage(named: "tree3.png")!,
                      UIImage(named: "tree4.png")!,
                      UIImage(named: "tree5.png")!,
                      UIImage(named: "tree6.png")!,
                      UIImage(named: "tree7.png")!,
                      UIImage(named: "tree7.png")!,
                      UIImage(named: "tree9.png")!,
                      UIImage(named: "tree10.png")!,
                      UIImage(named: "tree11.png")!,
                      UIImage(named: "tree12.png")!,
                      UIImage(named: "tree13.png")!,
                      UIImage(named: "tree14.png")!,
                      UIImage(named: "tree15.png")!,
                      UIImage(named: "tree16.png")!,
                      UIImage(named: "tree17.png")!]
        
        treeImage.image = UIImage.animatedImage(with: imageArray, duration: 4)

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

