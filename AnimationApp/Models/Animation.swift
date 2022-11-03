//
//  Animation.swift
//  AnimationApp
//
//  Created by user on 01.11.2022.
//

import Foundation

struct Animation {
    
    let preset: String
    let curve: String
    let force: Double
    let duration: Double
    let delay: Double
    
    var description: String {
        """
        preset: \(preset)
        curve: \(curve)
        force: \(String(format: "%.02f", force))
        duration: \(String(format: "%.02f", duration))
        delay: \(String(format: "%.02f", delay))
        """
    }
    
    static func randomAnimation() -> Animation {
        Animation(
            preset: DataStore.shared.animations.randomElement()?.rawValue ?? "pop",
            curve: DataStore.shared.curves.randomElement()?.rawValue ?? "easeIn",
            force: Double.random(in: 1...2),
            duration: Double.random(in: 1...1.5),
            delay: Double.random(in: 0.3...0.4)
        )
    }
}
