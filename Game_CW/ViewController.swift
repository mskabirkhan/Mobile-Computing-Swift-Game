//
//  ViewController.swift
//  Game_CW
//
//  Created by Kabir on 03/12/2018.
//  Copyright © 2018 Kabir. All rights reserved.
//

import UIKit
import AVFoundation             //importing for sound

protocol subviewDelegate{
    func changeBehavior ()
}


class ViewController: UIViewController, subviewDelegate {
    
    //var location = CGPoint(x: 0, y: 0)
    var player: AVAudioPlayer?
    let W = UIScreen.main.bounds.width
    let H = UIScreen.main.bounds.height
    
    func changeBehavior() {
        Score.text = "Score: \(point)"
        Dedution.text = "Deduction: \(deduct)"
        collisionBehaviour.removeAllBoundaries()
        collisionBehaviour.addBoundary(withIdentifier: "barrier" as NSCopying, for: UIBezierPath(rect: planeImage.frame))
    }
    
    
    var dynamicBehavior: UIDynamicItemBehavior!
    var collisionBehaviour: UICollisionBehavior!
    var dynamicAnimator: UIDynamicAnimator!
    var dynamicItemBehaviour:  UIDynamicItemBehavior!
    var gravityBehavior: UIGravityBehavior!

    
    
    let  birdArray = [0, 1, 3, 7, 9, 11, 13, 15, 16]
    let  coinArray = [0, 2, 4, 6, 8, 12, 14, 16, 18]
    let play = URL(fileURLWithPath: Bundle.main.path(forResource: "Button Clicking", ofType: "mp3")!)
    var audioPlayer = AVAudioPlayer()
    
    @IBOutlet weak var end: UIView!
    @IBOutlet weak var roadImage: UIImageView!
    @IBOutlet weak var treeImage: UIImageView!
    @IBOutlet weak var planeImage: Plane!
    @IBOutlet weak var skyView: UIImageView!
    @IBOutlet weak var Score: UILabel!
    @IBOutlet weak var Dedution: UILabel!
    @IBOutlet weak var over: UIImageView!
    
    @IBAction func playAgain(_ sender: AnyObject) {
        self.viewDidLoad()
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: play)
            audioPlayer.play()
        } catch {
            // couldn't load file :(
        }
    }
    
    @IBAction func mainScreen(_ sender: Any) {
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: play)
            audioPlayer.play()
        } catch {
            // couldn't load file :(
        }
    }
    var point = 0
    var deduct = 0
    

    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        MusicHelper.sharedHelper.playBackgroundMusic()

        planeImage.myDelegate = self
        
        dynamicAnimator = UIDynamicAnimator(referenceView: self.view)
        dynamicBehavior = UIDynamicItemBehavior(items: [])
        dynamicAnimator.addBehavior(dynamicBehavior)
        
        gravityBehavior = UIGravityBehavior(items: [])
        collisionBehaviour = UICollisionBehavior(items: [])
        dynamicAnimator.addBehavior(collisionBehaviour)
        collisionBehaviour.addBoundary(withIdentifier: "barrier" as NSCopying, for: UIBezierPath(rect: planeImage.frame))

        
        
        // certre of plane after starting games
        //Plane.center = CGPoint(x: 70, y: 150)
        
        //moving road array
        var imageArray: [UIImage]!
        var imageArray2: [UIImage]!
        var imageArray3: [UIImage]!
        
        

       
        
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
        
        roadImage.image = UIImage.animatedImage(with: imageArray, duration: 1)
        roadImage.frame = CGRect(x:0, y:0, width: W*1, height: H*1)
        
        //moving road array
        
        
        imageArray2 = [UIImage(named: "tree1.png")!,
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
        
        treeImage.image = UIImage.animatedImage(with: imageArray2, duration: 1)
        treeImage.frame = CGRect(x:0, y:H*(-0.2), width: W*(1), height: H*(1))

        
        imageArray3 =  [UIImage(named: "plane1.png")!,
                        UIImage(named: "plane2.png")!,
                        UIImage(named: "plane3.png")!,
                        UIImage(named: "plane4.png")!,
                        UIImage(named: "plane5.png")!,
                        UIImage(named: "plane6.png")!,
                        UIImage(named: "plane7.png")!,
                        UIImage(named: "plane8.png")!,
                        UIImage(named: "plane9.png")!,
                        UIImage(named: "plane10.png")!,
                        UIImage(named: "plane11.png")!,
                        UIImage(named: "plane11.png")!,
                        UIImage(named: "plane12.png")!,
                        UIImage(named: "plane13.png")!,
                        UIImage(named: "plane14.png")!,
                        UIImage(named: "plane15.png")!]
        
        planeImage.image = UIImage.animatedImage(with: imageArray3, duration: 4)
        planeImage.frame = CGRect(x:0, y:H*(0.3), width: W*(0.2), height: H*(0.2))

        
        
        //Making flying crows
        //Creating a new UIImageView from scratch
       
        
        for index in 0...8{
            let delay = Double(self.birdArray[index])
            let when = DispatchTime.now() + delay
            
            DispatchQueue.main.asyncAfter(deadline: when){
                let birdView = UIImageView(image:nil)
                var imageArray4: [UIImage]
                
                
                imageArray4 =  [UIImage(named: "bird1.png")!,
                                UIImage(named: "bird2.png")!,
                                UIImage(named: "bird3.png")!,
                                UIImage(named: "bird4.png")!,
                                UIImage(named: "bird5.png")!,
                                UIImage(named: "bird6.png")!,
                                UIImage(named: "bird7.png")!,
                                UIImage(named: "bird8.png")!,
                                UIImage(named: "bird9.png")!,
                                UIImage(named: "bird10.png")!]
                
            
        //Assign an image to the image view
        
        
        //Assign the size and position of the image view
        birdView.image = UIImage.animatedImage(with: imageArray4, duration: 1)
        birdView.frame = CGRect(x:self.W, y: CGFloat(arc4random_uniform(UInt32(self.H))), width: self.W*(0.18), height: self.H*(0.18))
    
        
        
        //Add the image view to the main view
        self.view.addSubview(birdView)
        self.view.bringSubviewToFront(birdView)
                
        self.dynamicBehavior.addItem(birdView)
        self.dynamicBehavior.addLinearVelocity(CGPoint(x: -200, y:0), for: birdView)
        self.collisionBehaviour.addItem(birdView)
                self.collisionBehaviour.action = {
                    if(self.planeImage.frame.intersects(birdView.frame)){
                        self.deduct -= 5
                    }
                    
                }
        
            }
            
            
        }
        
        for index in 0...8{
            let delay = Double(self.coinArray[index])
            let when = DispatchTime.now() + delay
            
            DispatchQueue.main.asyncAfter(deadline: when){
                let coinView = UIImageView(image:nil)
                var imageArray5: [UIImage]
                
                
                imageArray5 =  [UIImage(named: "star coin rotate 1.png")!,
                                UIImage(named: "star coin rotate 2.png")!,
                                UIImage(named: "star coin rotate 3.png")!,
                                UIImage(named: "star coin rotate 4.png")!]
                
                //Assign the size and position of the image view
                coinView.image = UIImage.animatedImage(with: imageArray5, duration: 7)
                coinView.frame = CGRect(x:self.W, y: CGFloat(arc4random_uniform(UInt32(self.H)-60)), width: self.W*(0.03), height: self.H*(0.09))
                
        
                
                
                //Add the image view to the main view
                self.view.addSubview(coinView)
                self.view.bringSubviewToFront(coinView)
                
                self.dynamicBehavior.addItem(coinView)
                self.dynamicBehavior.addLinearVelocity(CGPoint(x: -400, y:50), for: coinView)
                self.collisionBehaviour.addItem(coinView)
                //collisionBehaviour.action = coinArray.removeFromSuperview()
                
                self.collisionBehaviour.action = {
                    if(self.planeImage.frame.intersects(coinView.frame)){
                    self.point += 4
                    coinView.removeFromSuperview()
                }
                
                }
            }
            
            
        }
        self.end.isHidden = true
        let when = DispatchTime.now() + 20
        DispatchQueue.main.asyncAfter(deadline: when) {
            self.end.isHidden = false
            self.end.alpha = 1
            self.end.frame = CGRect(x:0, y:0, width: self.W*1, height: self.H*1)
            self.over.frame = CGRect(x:0, y:0, width: self.W*1, height: self.H*1)
            //self.Score.text = "Score: \(self.point)"
            
           
        }
        
        
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    



}
