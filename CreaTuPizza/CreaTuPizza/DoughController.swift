//
//  SizeController.swift
//  CreaTuPizza
//
//  Created by Aranzza Abascal on 10/12/17.
//  Copyright © 2017 Aranzza Abascal. All rights reserved.
//

import UIKit

class DoughController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    
    @IBOutlet weak var pickerView: UIPickerView!
    @IBOutlet weak var confirmationLabel: UILabel!
    var pizzaSize = ""
    
    
    let array = ["Delgada", "Crujiente", "Gruesa"]
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
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let nextView = segue.destination as! CheeseController
        nextView.pizzaSize = pizzaSize
        nextView.doughtType = confirmationLabel.text!
    }
}

