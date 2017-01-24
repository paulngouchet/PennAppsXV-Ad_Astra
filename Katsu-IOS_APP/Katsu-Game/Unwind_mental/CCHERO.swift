//
//  CCHERO.swift
//  Unwind_mental
//
//  Created by Paul Ngouchet on 1/21/17.
//  Copyright © 2017 Paul Ngouchet. All rights reserved.
//

import Foundation
import SpriteKit

class CCHERO : SKSpriteNode {
    
    init(){
        super.init(texture: SKTexture(imageNamed: "Idle__000.png"), color: UIColor.clear, size: CGSize(width:30, height:55))
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func animateRun(){
        print("breaking there")
        let frames = framesForAnimation(name: "Run")
        print(" right there")
        let move = SKAction.repeatForever(SKAction.animate(with: frames, timePerFrame: 0.03, resize: true, restore: true))
        print("almost there")
        run(move)
        print("terminated")
        
    }
    
    func animateSlide(){
        
    }
    
    func framesForAnimation(name: String) -> [SKTexture]
    {
       
        var frames = [SKTexture]()
    
        for i in 0...9
        {
            let textureName = "\(name)__00\(i)"
            frames.append(SKTexture(imageNamed: textureName))
        }
        
        
        
        
        return frames
    }
}
