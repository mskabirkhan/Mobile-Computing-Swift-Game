//
//  Plane.swift
//  Game_CW
//
//  Created by Kabir on 05/12/2018.
//  Copyright © 2018 Kabir. All rights reserved.
//

import UIKit

class Plane: UIImageView {
    
    var myDelegate : subviewDelegate?
    
    var startLocation: CGPoint?
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        startLocation = touches.first?.location(in: self)
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        //_ = touches.first?.location(in: self)
        //_ = startLocation!.x - startLocation!.x
        //_ = startLocation!.y - startLocation!.y
        
       // self.center = CGPoint(x: 300, y: 0)
        
        let currentLocation = touches.first?.location(in: self)
        let dx = currentLocation!.x - startLocation!.x
        let dy = currentLocation!.y - startLocation!.y
        
        self.center = CGPoint(x: self.center.x+dx, y: self.center.y+dy)
        let xx = self.bounds.midX
        center.x = max(xx, center.x)
        center.x = min(self.superview!.bounds.size.width - xx,  center.x)
        
        let yy = self.bounds.midX
        center.y = max(yy, center.y)
        center.y = min(self.superview!.bounds.size.width - yy,  center.y)
        
        self.center = center
        
        self.myDelegate?.changeBehavior()
        
        
        
        
        
    }

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
