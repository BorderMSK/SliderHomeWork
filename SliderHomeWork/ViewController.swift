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
    
    var finalColor: UIColor?
    
    var redColor: CGFloat = 0.0
    var greenColor: CGFloat = 0.0
    var blueColor: CGFloat = 0.0
    var alphaColor: CGFloat = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mixColor.layer.cornerRadius = 15
    }
    
    @IBAction func actionSlider(_ sender: Any) {
        
        redColor = CGFloat(redSlider.value)
        greenColor = CGFloat(greenSlider.value)
        blueColor = CGFloat(blueSlider.value)
        
        redValue.text = String(format: "%.2f", redSlider.value)
        greenValue.text = String(format: "%.2f", greenSlider.value)
        blueValue.text = String(format: "%.2f", blueSlider.value)
        
        finalColor = UIColor(red: redColor, green: greenColor, blue: blueColor, alpha: 1.0)
        
        mixColor.backgroundColor = finalColor
    }
    
    @IBAction func alphaAction(_ sender: Any) {
        alphaColor = CGFloat(alphaSlider.value)
        mixColor.alpha = alphaColor
    }
}

