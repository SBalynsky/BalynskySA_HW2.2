//
//  ViewController.swift
//  BalynskySA_HW2.2
//
//  Created by Macbook on 21.05.2020.
//  Copyright © 2020 Balynsky. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var viewRGB: UIView!
    @IBOutlet weak var lebelRedText: UILabel!
    @IBOutlet weak var lebelGreenText: UILabel!
    @IBOutlet weak var lebelBlueText: UILabel!
    @IBOutlet weak var lebelRedValue: UILabel!
    @IBOutlet weak var lebelGreenValue: UILabel!
    @IBOutlet weak var lebelBlueValue: UILabel!
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        lebelRedText.text = "Red:"
        lebelGreenText.text = "Green:"
        lebelBlueText.text = "Blue:"
        
        lebelRedValue.text = String(format: "%.2f", redSlider.value)
        lebelGreenValue.text = String(format: "%.2f", greenSlider.value)
        lebelBlueValue.text = String(format: "%.2f", blueSlider.value)
    }
    
    @IBAction func redSliderAction() {
        lebelRedValue.text = String(format: "%.2f", redSlider.value)
        viewRGB.backgroundColor = .init(displayP3Red: CGFloat(redSlider.value),
                                        green: CGFloat(greenSlider.value),
                                        blue: CGFloat(blueSlider.value),
                                        alpha: 1)
    }
    @IBAction func greenSliderAction() {
        lebelGreenValue.text = String(format: "%.2f", greenSlider.value)
        viewRGB.backgroundColor = .init(displayP3Red: CGFloat(redSlider.value),
                                        green: CGFloat(greenSlider.value),
                                        blue: CGFloat(blueSlider.value),
                                        alpha: 1)
    }
    @IBAction func blueSliderAction() {
        lebelBlueValue.text = String(format: "%.2f", blueSlider.value)
        viewRGB.backgroundColor = .init(displayP3Red: CGFloat(redSlider.value),
                                        green: CGFloat(greenSlider.value),
                                        blue: CGFloat(blueSlider.value),
                                        alpha: 1)
    }
    
}

