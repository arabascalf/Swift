//
//  SizeController.swift
//  CreaTuPizza
//
//  Created by Aranzza Abascal on 10/12/17.
//  Copyright © 2017 Aranzza Abascal. All rights reserved.
//

import UIKit

class CheeseController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var pickerView: UIPickerView!
    @IBOutlet weak var confirmationLabel: UILabel!
    
    
    let array = ["Mozzarela", "Cheddar", "Parmesano", "Sin queso"]
    var size = 0
    
    
    @IBAction func acceptButton(_ sender: Any) {
        confirmationLabel.isHidden = false
        
        confirmationLabel.text = array[size]
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return array.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return array[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        size = row
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pickerView.dataSource = self
        pickerView.delegate = self
        
        confirmationLabel.isHidden = true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

