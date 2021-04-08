//
//  ViewController.swift
//  Traffic light
//
//  Created by Дмитрий Лещёв on 08/04/2021.
//

import UIKit

enum CurrentLight {
    case red, yellow, green
}

class ViewController: UIViewController {
    
    @IBOutlet var redLightView: UIView!
    @IBOutlet var yellowLightView: UIView!
    @IBOutlet var greenLightView: UIView!
    
    @IBOutlet var startButton: UIButton!
    
    private var currentLight = CurrentLight.red
    
    private let lightIsOn: CGFloat = 1
    private let lightIsOff: CGFloat = 0.3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redLightView.alpha = lightIsOff
        yellowLightView.alpha = lightIsOff
        greenLightView.alpha = lightIsOff
        
        redLightView.layer.cornerRadius = redLightView.frame.width / 2
        yellowLightView.layer.cornerRadius = yellowLightView.frame.width / 2
        greenLightView.layer.cornerRadius = greenLightView.frame.width / 2
        
        startButton.layer.cornerRadius = 8
    }

    @IBAction func startButtonPressed() {
        
        startButton.setTitle("NEXT", for: .normal)
        
        switch currentLight {
        case .red:
            redLightView.alpha = lightIsOn
            greenLightView.alpha = lightIsOff
            currentLight = .yellow
        case .yellow:
            yellowLightView.alpha = lightIsOn
            redLightView.alpha = lightIsOff
            currentLight = .green
        case .green:
            greenLightView.alpha = lightIsOn
            yellowLightView.alpha = lightIsOff
            currentLight = .red
        }
    }
}

