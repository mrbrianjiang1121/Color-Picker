//
//  ViewController.swift
//  Color Picker
//
//  Created by Brian Jiang on 7/2/19.
//  Copyright © 2019 Brian Jiang. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var ColorLabel: UILabel!
    @IBOutlet weak var ColorPickerView: UIPickerView!
    
    let colorsList = ["Red", "Orange", "Yellow", "Green", "Blue", "Purple"]
    var colors = [UIColor.red, UIColor.orange, UIColor.yellow, UIColor.green, UIColor.blue, UIColor.purple]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return colorsList[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return colorsList.count
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        ColorLabel.text = colorsList[row]
        self.view.backgroundColor = colors[row]
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

