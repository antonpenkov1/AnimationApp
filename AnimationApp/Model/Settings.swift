//
//  Settings.swift
//  AnimationApp
//
//  Created by Антон Пеньков on 25.01.2024.
//

import UIKit
import SpringAnimation

struct Settings {
    let animation: String
    let curve: String
    let force: CGFloat
    let duration: CGFloat
    let delay: CGFloat
    
    static func getSettings() -> Settings {
        Settings(
            animation: AnimationPreset.allCases.randomElement()?.rawValue ?? "pop",
            curve: AnimationCurve.allCases.randomElement()?.rawValue ?? "easeIn",
            force: CGFloat.random(in: 0...2),
            duration: CGFloat.random(in: 1...2),
            delay: CGFloat.random(in: 0...2)
        )
    }
}
