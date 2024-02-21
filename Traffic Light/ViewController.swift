//
//  ViewController.swift
//  Traffic Light
//
//  Created by Vladimir Liubarskiy on 21/02/2024.
//

import UIKit

enum CurrentLight {
case red, yellow, green
}

final class ViewController: UIViewController {
    
    @IBOutlet var greenLightLabel: UIView!
    @IBOutlet var yellowLightLabel: UIView!
    @IBOutlet var redLightLabel: UIView!
    
    @IBOutlet var startNextButton: UIButton!
    private var currentLight = CurrentLight.red
    private let lightsOff: CGFloat = 0.3
    private let lightsOn: CGFloat = 1
    override func viewDidLoad() {
        super.viewDidLoad()
        startNextButton.layer.cornerRadius = 10
        greenLightLabel.layer.cornerRadius = 50
        yellowLightLabel.layer.cornerRadius = 50
        redLightLabel.layer.cornerRadius = 50
        greenLightLabel.alpha = lightsOff
        yellowLightLabel.alpha = lightsOff
        redLightLabel.alpha = lightsOff
        
    }
    
    @IBAction func startButton(_ sender: UIButton) {
        if startNextButton.currentTitle == "Start" {
            startNextButton.setTitle("Next", for: .normal)
        }
        switch currentLight {
        case .red:
            greenLightLabel.alpha = lightsOff
            redLightLabel.alpha = lightsOn
            currentLight = .yellow
            
        case .yellow:
            yellowLightLabel.alpha = lightsOn
            redLightLabel.alpha = lightsOff
            currentLight = .green
            
        case .green:
            greenLightLabel.alpha = lightsOn
            yellowLightLabel.alpha = lightsOff
            currentLight = .red
        }
    }
}
