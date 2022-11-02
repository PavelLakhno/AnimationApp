//
//  DataStore.swift
//  AnimationApp
//
//  Created by user on 01.11.2022.
//

import Foundation
import SpringAnimation

class DataStore {
    static let shared = DataStore()
    
    let animations: [AnimationPreset] = [
        .pop,
        .fadeInDown,
        .fadeInLeft,
        .shake,
        .morph,
        .wobble,
        .flipX,
        .flipY,
        .squeeze,
        .swing,
        .zoomIn
    ]

    let curves: [AnimationCurve] = [
        .easeIn,
        .easeOut,
        .easeInCirc,
        .easeOutCirc,
        .easeInCubic,
        .easeOutCubic,
        .easeInBack,
        .easeOutBack
    ]
    
    private init() {}
}
