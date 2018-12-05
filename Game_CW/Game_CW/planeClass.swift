//
//  planeClass.swift
//  Game_CW
//
//  Created by Kabir on 05/12/2018.
//  Copyright © 2018 Kabir. All rights reserved.
//

import UIKit

class planeClass: UIImageView {

    var startLocation: CGPoint?
    
    
    override func touchesBegan( _ touches: Set<UITouch>, with event: UIEvent?) {
        
        startLocation = touches.first?.location(in: self)
    }
    
    override func touchesMoved( _ touches: Set<UITouch>, with event: UIEvent?) {
        
        let currentLocation = touches.first?.location(in: self)
        _ = currentLocation!.x - startLocation!.x
        _ = currentLocation!.x - startLocation!.y
        
        self.center = CGPoint(x: 100, y: 200)
    }
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
