//
//  MainMenuScene.swift
//  LaserChase
//
//  Created by Justin Bengtson on 8/22/18.
//  Copyright © 2018 Justin Bengtson. All rights reserved.
//

import SpriteKit

class MainMenuScene: SKScene {
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches {
            let location = touch.location(in: self)
            
            if atPoint(location).name == "Play" {
                // File name is the name of the .sks file
                if let scene = GamePlayScene(fileNamed: "PlayScene"){
                    // Set the scale mode to scale to fit the window
                    scene.scaleMode = .aspectFill
                    
                    // Present the scene
                    view!.presentScene(scene, transition: SKTransition.doorsOpenVertical(withDuration: TimeInterval(2)))
                }
            }
        }
    }
}
