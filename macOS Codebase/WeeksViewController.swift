//
//  WeeksViewController.swift
//  Life Calendar
//
//  Created by Wesley Van der Klomp on 7/7/17.
//

import Cocoa
import SpriteKit

class WeeksViewController: NSViewController {
    
    @IBOutlet weak var skView: SKView!
    var skScene: SKScene?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set up view and scene
        skView.showsNodeCount = true
//        skScene = SKScene(fileNamed: "WeeksScene")
        
        skScene = WeeksScene(size: CGSize(width: 300, height: 300))
        

        
        
        skScene?.backgroundColor = NSColor.blue
        skScene?.scaleMode = .aspectFill
        skView.presentScene(skScene)
    }
    
}
