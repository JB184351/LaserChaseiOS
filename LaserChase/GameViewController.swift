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

    override func viewDidLoad() {
        let scene = GameScene(size: view.frame.size)
        let skView = view as! SKView
        skView.presentScene(scene)
    }
    
}
