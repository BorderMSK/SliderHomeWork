//
//  ViewController.swift
//  SliderHomeWork
//
//  Created by Igor Makeev on 21.05.2021.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var mixColor: UIView!
    
    @IBOutlet weak var redValue: UILabel!
    @IBOutlet weak var greenValue: UILabel!
    @IBOutlet weak var blueValue: UILabel!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var alphaSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mixColor.layer.cornerRadius = 15
    }
    
    @IBAction func actionSlider(_ sender: Any) {
        
        let redColor = CGFloat(redSlider.value)
        let greenColor = CGFloat(greenSlider.value)
        let blueColor = CGFloat(blueSlider.value)
        
        redValue.text = String(format: "%.2f", redSlider.value)
        greenValue.text = String(format: "%.2f", greenSlider.value)
        blueValue.text = String(format: "%.2f", blueSlider.value)
        
        let finalColor = UIColor(red: redColor, green: greenColor, blue: blueColor, alpha: 1.0)
        
        mixColor.backgroundColor = finalColor
    }
    
    @IBAction func alphaAction(_ sender: Any) {
        
        let alphaColor = CGFloat(alphaSlider.value)
        mixColor.alpha = alphaColor
    }
}

