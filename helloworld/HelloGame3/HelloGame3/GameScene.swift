//
//  GameScene.swift
//  HelloGame3
//
//  Created by maikaowen on 14-10-2.
//  Copyright (c) 2014年 makao007. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    override func didMoveToView(view: SKView) {
         physicsBody = SKPhysicsBody(edgeLoopFromRect: self.frame)
        
        /* Setup your scene here */
        
//        let myLabel = SKLabelNode(fontNamed:"Chalkduster")
//        myLabel.text = "Hello, World!";
//        myLabel.fontSize = 65;
//        myLabel.position = CGPoint(x:CGRectGetMidX(self.frame), y:CGRectGetMidY(self.frame));
//        
//        self.addChild(myLabel)
    }
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        /* Called when a touch begins */
        for touch: AnyObject in touches {
            let location = touch.locationInNode(self)
            let label = SKLabelNode()
            label.text = "Maikao"
            label.position = location
            label.physicsBody = SKPhysicsBody (rectangleOfSize: label.frame.size)
            self.addChild(label)
        }
        
//        for touch: AnyObject in touches {
//            let location = touch.locationInNode(self)
//            
//            let sprite = SKSpriteNode(imageNamed:"Spaceship")
//            
//            sprite.xScale = 0.5
//            sprite.yScale = 0.5
//            sprite.position = location
//            
//            let action = SKAction.rotateByAngle(CGFloat(M_PI), duration:1)
//            
//            sprite.runAction(SKAction.repeatActionForever(action))
//            
//            self.addChild(sprite)
//        }
    }
   
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
}
