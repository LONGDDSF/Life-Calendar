//
//  EventsSidebar.swift
//  Life Calendar
//
//  Created by Wesley Van der Klomp on 8/22/17.
//

import Foundation
import SpriteKit

class EventsSidebar {
    
    var events: [Event] {
        didSet {
            layoutEvents()
        }
    }
    
    var node: ScrollViewNode
    
    var size: CGSize {
        didSet {
            let rect = CGRect(x: position.x, y: position.y, width: size.width, height: size.height)
            
            node = ScrollViewNode(rect: rect)
        }
    }
    
    var position = CGPoint(x: 0, y: 0) {
        didSet {
            // SKShapeNode's are anchored at center. We want to set the position of the top left corner.
            let x = position.x + (size.width / 2)
            let y = position.y - (size.height / 2)

            node.position = CGPoint(x: x, y: y)
        }
    }
    
    private var eventDisplays: [EventDisplay] = []
    
    init(events: [Event], size: CGSize) {
        self.events = events
        self.size = size
        
        node = ScrollViewNode(rectOf: size)
        let backgroundColor = NSColor(hexString: "EFEFEF")
        let borderColor = NSColor(hexString: "979797")
        node.fillColor = backgroundColor.withAlphaComponent(0.45)
        node.strokeColor = borderColor.withAlphaComponent(0.5)
        node.lineWidth = 0.5
        node.position = position
        node.isUserInteractionEnabled = true
        
        layoutEvents()
    }
    
    /// Goes through the events in `timeline` and creates an `EventDisplay` for each.
    private func layoutEvents() {
        let topY = size.height / 2
        var currentPosition = CGPoint(x: 0, y: topY)
        
        for event in events {
            let eventDisplay = EventDisplay(event: event)

            currentPosition = CGPoint(x: currentPosition.x, y: currentPosition.y - eventDisplay.size.height)
            
            eventDisplay.position = currentPosition
            
            node.addChild(eventDisplay.node)
            
        }
    }
    
}
