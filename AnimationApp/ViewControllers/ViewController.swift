//
//  ViewController.swift
//  AnimationApp
//
//  Created by Антон Пеньков on 25.01.2024.
//

import UIKit
import SpringAnimation

final class ViewController: UIViewController {

    // MARK: - IB Outlets and Private Properties
    @IBOutlet var springView: SpringView!
    @IBOutlet var settingsLabels: [UILabel]!
    
    private var settings = Settings.getSettings()
    
    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        changeSettings()
        changeLabels()
    }

    // MARK: - IB Actions
    @IBAction func runButtonAction(_ sender: UIButton) {
        changeSettings()
        changeLabels()
        
        springView.animate()
        
        settings = Settings.getSettings()
        sender.setTitle("Run \(settings.animation)", for: .normal)
    }
    
    // MARK: - Private Methods
    private func changeLabels() {
        settingsLabels[0].text = "Preset: \(settings.animation)"
        settingsLabels[1].text = "Curve: \(settings.curve)"
        settingsLabels[2].text = String(format: "Force: %.2f", settings.force)
        settingsLabels[3].text = String(format: "Duration: %.2f", settings.duration)
        settingsLabels[4].text = String(format: "Delay: %.2f", settings.delay)
    }
    
    private func changeSettings() {
        springView.animation = settings.animation
        springView.curve = settings.curve
        springView.force = settings.force
        springView.duration = settings.duration
        springView.delay = settings.delay
    }
    
}

