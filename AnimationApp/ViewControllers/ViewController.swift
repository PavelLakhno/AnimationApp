//
//  ViewController.swift
//  AnimationApp
//
//  Created by user on 01.11.2022.
//

import UIKit
import SpringAnimation

class ViewController: UIViewController {

    @IBOutlet weak var animationView: SpringView!
    @IBOutlet weak var animationLabel: UILabel! {
        didSet {
            animationLabel.text = animation.infoAnimation
        }
    }
    
    private var animation = Animate.randomAnimation()
    
    @IBAction func buttonPressed(_ sender: SpringButton) {
        animationLabel.text = animation.infoAnimation
        
        animationView.animation = animation.preset
        animationView.curve = animation.curve
        animationView.force = animation.force
        animationView.duration = animation.duration
        animationView.delay = animation.delay
        animationView.animate()
        
        animation = Animate.randomAnimation()
        sender.setTitle("Run \(animation.preset)", for: .normal)
    }


}

