//
//  CCGround.swift
//  Unwind_mental
//
//  Created by Paul Ngouchet on 1/21/17.
//  Copyright © 2017 Paul Ngouchet. All rights reserved.
//

import UIKit
import SpriteKit

class CCGround: SKSpriteNode {
    let kTileSideLentgh: CGFloat = 38.0
    
    init(size: CGSize){
        
        super.init(texture: nil, color: UIColor.brown, size: CGSize(width: size.width*2, height: size.height))
        
        let cols = (Int(size.width / kTileSideLentgh) + 1) * 2
        let rows = Int(size.height / kTileSideLentgh) + 1
        //let redMarker = SKSpriteNode(color: UIColor.red, size: CGSize(width: 50, height: 50))
        //addChild(redMarker)
    
        for i in 0 ..< rows
        {
            for j in 0 ..< cols
            {
                var tileType: String!
                if i == 0{
                    
                    tileType = "grass"
                } else
                {
                    tileType = "ground"
                }
                
                var tileNumber: Int!
                if j % 2 == 0 {
                tileNumber = 1
                }
                else {
                    tileNumber = 2
                }
                
                var tileName = "\(tileType)\(tileNumber)"
                
            let tile = SKSpriteNode(imageNamed: "ground1")
                tile.anchorPoint = CGPoint(x: 0.0, y: 1.0)
                
                let xShift = -self.size.width / 2
                let yShift = self.size.height / 2
                
                tile.position = CGPoint(x: xShift + CGFloat(j) * kTileSideLentgh, y: yShift - CGFloat(i) * kTileSideLentgh )
                addChild(tile)
            }
            
        }
        
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func start(){
        
        let moveLeft = SKAction.moveBy(x: -frame.size.width/2, y: 0.0 , duration: 1.5)
        let restart = SKAction.moveBy(x: frame.size.width/2 , y: 0.0 , duration: 0.0 )
        let movesequence = SKAction.sequence([moveLeft, restart])
        run(SKAction.repeatForever(movesequence))
        
        
        
    }
    

}
