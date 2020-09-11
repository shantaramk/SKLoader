//
//  SKLoader.swift
//  LoaderAnimation
//
//  Created by Shantaram K on 11/09/20.
//  Copyright © 2020 Shantaram Kokate. All rights reserved.
//

import Foundation
import UIKit
class SKLoader: UIView {

    
    let activeTrack = CAShapeLayer()
    let inActiveTrack = CAShapeLayer()

    override func draw(_ rect: CGRect) {

        //Path for Active and InActive Layer
        let path = UIBezierPath(arcCenter: self.center,
                                radius: 70,
                                startAngle: 0,
                                endAngle: CGFloat.pi * 2,
                                clockwise: true)

        //InActive Track
        inActiveTrack.frame = CGRect(x: 0, y: 0, width: 120, height: 120)
        inActiveTrack.lineWidth = 8.0
        inActiveTrack.path = path.cgPath
        inActiveTrack.strokeColor = UIColor.gray.cgColor
        inActiveTrack.fillColor = UIColor.clear.cgColor
        inActiveTrack.strokeEnd = 1
        self.layer.addSublayer(inActiveTrack)

        //Active Track
        activeTrack.frame = CGRect(x: 0, y: 0, width: 120, height: 120)
        activeTrack.lineWidth = 8.0
        activeTrack.path = path.cgPath
        activeTrack.strokeColor = UIColor.red.cgColor
        activeTrack.fillColor = UIColor.clear.cgColor
        activeTrack.strokeEnd = 0
        self.layer.addSublayer(activeTrack)
        self.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(handleTap)))


    }

    @objc func handleTap() {
        ///.. Animation

        let pathAnimation = CABasicAnimation(keyPath: "strokeEnd")
        pathAnimation.toValue = 1
        pathAnimation.duration = 2
        pathAnimation.autoreverses = false
        pathAnimation.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeInEaseOut)
        pathAnimation.repeatCount = .zero
        pathAnimation.isRemovedOnCompletion = true
        activeTrack.add(pathAnimation, forKey: "PathAnimation")
    }
}
