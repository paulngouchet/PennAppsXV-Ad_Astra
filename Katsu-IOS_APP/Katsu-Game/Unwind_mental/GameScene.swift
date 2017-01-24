//
//  GameScene.swift
//  Unwind_mental
//
//  Created by Paul Ngouchet on 1/21/17.
//  Copyright © 2017 Paul Ngouchet. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene, SKPhysicsContactDelegate {
    
    var ground : CCGround!
    var hero: CCHERO!
    
      var moving:SKNode!
   
    
    override func didMove(to view: SKView) {
       
        //self.physicsWorld.gravity = CGVector( dx: 0.0, dy: -5.0 )
        //self.physicsWorld.contactDelegate = self
        
        loadHero()
        loadGround()
        loadBackground()
    }
    
        func loadBackground()
        {
            let background = SKSpriteNode(texture: SKTexture(image: UIImage(named: "background")!), color: UIColor.clear, size: CGSize(width: self.frame.size.width, height: self.frame.size.height))
            background.position = CGPoint(x: self.frame.size.width / 2, y: self.frame.size.height / 2)
            background.zPosition = -1
            addChild(background)
        }
    
        
        func loadGround()
        {
            ground = CCGround( size: CGSize(width: self.frame.size.width, height: self.frame.size.height / 2 ))
            ground.position = CGPoint(x: self.frame.size.width , y: self.frame.size.height / 4)
            
            addChild(ground)
        }
    
    func loadHero()
    {
        hero = CCHERO()
        hero.position = CGPoint(x: frame.size.width / 5 , y: frame.size.height/2.35 + hero.frame.size.height)
        addChild(hero)
    }
    
    /*func loadGestureRecognizers()
    {
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: Selector(("tapped")))
        view?.addGestureRecognizer(tapGestureRecognizer)
    }
    
    
    func tapped(_ sender: UITapGestureRecognizer){
        hero.animateRun()
        print("tapped")
    }*/
    
        
    //let tapGesture = UITapGestureRecognizer(target: self, action: #selector(self.tapBlurButton(_:)))
    

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        ground.start()
        hero.animateRun()
        
      
   
    }
    

    
    //func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    //}

}
