//
//  ViewController.swift
//  tConverter
//
//  Created by Alexander Airumyan on 05.07.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var cellsium: UILabel!
    @IBOutlet weak var farengeit: UILabel!
    @IBOutlet weak var slider: UISlider!{
        didSet {
            slider.minimumValue = 0
            slider.maximumValue = 100
            slider.value = 0
        }
    }
    
    @IBAction func sladerChange(_ sender: UISlider) {
        let tempCellsium = Int(round(slider.value))
        cellsium.text = "\(tempCellsium) Cº"
        let tempFarengeit = Int((round(slider.value * 9 / 5) + 32))
        farengeit.text = "\(tempFarengeit) Fº"
    }
}
