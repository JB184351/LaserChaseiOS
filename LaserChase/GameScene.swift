//
//  GameScene.swift
//  LaserChase
//
//  Created by Justin Bengtson on 8/14/18.
//  Copyright © 2018 Justin Bengtson. All rights reserved.
//

import SpriteKit


class GameScene: SKScene {
    
    var backGround: SKEmitterNode!
    var cat:SKSpriteNode!
    
    
    @objc func tap(recognizer: UIGestureRecognizer){
        // Determines touch location
        let viewLocation = recognizer.location(in: view)
        
        let sceneLocation = convertPoint(fromView: viewLocation)
        
        // Animates an object to where screen was touched
        let moveToAction = SKAction.move(to: sceneLocation, duration: 1)
        label.run(moveToAction)
    }
    
    let label = SKLabelNode(text: "Welcome to LaserChase!")
    
    override func didMove(to view: SKView) {
        // Draws text label in center of screen
        label.position = CGPoint(x: view.frame.width / 2, y: view.frame.height / 2)
        addChild(label)
        
        // Helps device recognize when user interacts with the device
        let recognizer = UITapGestureRecognizer(target: self, action: #selector(tap))
        view.addGestureRecognizer(recognizer)

        
       // backGround = SKEmitterNode(imageNamed: "spr_menuScreen_strip11.imageset")
        backGround.setScale(0.5)
        
        backGround.position = CGPoint(x: self.frame.width, y: 0 + backGround.frame.height)
        self.addChild(backGround)
 
    }
    
    override func update(_ currentTime: TimeInterval) {
        
    }
    
/*
    var backGround = SKSpriteNode()
    
    override func didMove(to view: SKView) {
        backGround = SKSpriteNode(imageNamed: "spr_playStateBackground.imageset")
        backGround.setScale(0.5)
        
        backGround.position = CGPoint(x: self.frame.width / 2, y: 0 + backGround.frame.height / 2)
        self.addChild(backGround)
        
        }
 */
        
}
