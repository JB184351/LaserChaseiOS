//
//  GameViewController.swift
//  LaserChase
//
//  Created by Justin Bengtson on 8/14/18.
//  Copyright © 2018 Justin Bengtson. All rights reserved.
//

import UIKit
import SpriteKit
import GameplayKit

class GameViewController: UIViewController {

    /*
    override func viewDidLoad() {
        let scene = GameScene(size: view.frame.size)
        let skView = view as! SKView
        skView.presentScene(scene)
    }
 */
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let view = self.view as! SKView? {
            // Load the SKScne from 'GameScene.sks'
            if let scene = MainMenuScene(fileNamed: "MainMenu"){
                // Set the scale mode to scale to fit the window
                scene.scaleMode = .aspectFill
                view.presentScene(scene)
            }
            
            view.ignoresSiblingOrder = true
            
            view.showsFPS = true
            view.showsNodeCount = true
        }
    }
    
}
