//
//  ViewController.swift
//  FlexibleSteppedProgressBar
//
//  Created by Amrata Baghel on 09/28/2016.
//  Copyright (c) 2016 Amrata Baghel. All rights reserved.
//

import UIKit
import FlexibleSteppedProgressBar

class ViewController: UIViewController, FlexibleSteppedProgressBarDelegate {
    
    @IBOutlet  var progressBar: FlexibleSteppedProgressBar!
    
    var backgroundColor = UIColor(red: 218.0 / 255.0, green: 218.0 / 255.0, blue: 218.0 / 255.0, alpha: 1.0)
    var progressColor = UIColor.systemOrange
    var textColorHere = UIColor(red: 153.0 / 255.0, green: 153.0 / 255.0, blue: 153.0 / 255.0, alpha: 1.0)
    
    var maxIndex = -1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupProgressBarWithoutLastState()
    }

    
    func setupProgressBarWithoutLastState() {

        // Customise the progress bar here
        progressBar.numberOfPoints = 5
        progressBar.lineHeight = 3
        progressBar.radius = 25
        progressBar.progressLineHeight = 10
        progressBar.progressRadius = 25
        progressBar.delegate = self
        
        progressBar.selectedOuterCircleLineWidth = 0
        progressBar.selectedOuterCircleStrokeColor = .clear
        progressBar.lastStateOuterCircleLineWidth = 0
        progressBar.lastStateOuterCircleStrokeColor = .clear
        progressBar.selectedBackgoundColor = progressColor
        progressBar.selectedOuterCircleStrokeColor = backgroundColor
        progressBar.currentSelectedCenterColor = progressColor
        progressBar.stepTextColor = textColorHere
        
        progressBar.currentSelectedTextColor = progressColor
        progressBar.stepAnimationDuration = 0
        progressBar.currentIndex = 0
        
        
    }
    
    
    
    func progressBar(_ progressBar: FlexibleSteppedProgressBar,
                     didSelectItemAtIndex index: Int) {
        
    }
    
    func progressBar(_ progressBar: FlexibleSteppedProgressBar,
                     canSelectItemAtIndex index: Int) -> Bool {
        return true
    }
    
    func progressBar(_ progressBar: FlexibleSteppedProgressBar,
                     textAtIndex index: Int, position: FlexibleSteppedProgressBarTextLocation) -> String {
        if  progressBar == self.progressBar {
            if position == FlexibleSteppedProgressBarTextLocation.bottom {
                switch index {
                    
                case 0: return "Scan"
                case 1: return "Verify"
                case 2: return "Payment"
                case 3: return "Deliver"
                default: return "Date"
                    
                }
                
            } else if position == FlexibleSteppedProgressBarTextLocation.center {
                switch index {
                    
                case 0: return "1"
                case 1: return "2"
                case 2: return "3"
                case 3: return "4"
                case 4: return "5"
                default: return "0"
                    
                }
            }
        }
        return ""
    }
    
    
}

