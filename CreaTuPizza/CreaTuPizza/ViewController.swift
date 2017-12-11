//
//  ViewController.swift
//  CreaTuPizza
//
//  Created by Aranzza Abascal on 10/12/17.
//  Copyright © 2017 Aranzza Abascal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var confirmationButton: UIButton!
    
    var sizeBool:Bool = false
    var doughBool:Bool = false
    var cheeseBool:Bool = false
    var ingredientsBool:Bool = false

    override func viewDidLoad() {
        super.viewDidLoad()
        
        confirmationButton.isHidden = true
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func sizeButton(_ sender: Any) {
        sizeBool = true
    }
    
    @IBAction func doughButton(_ sender: Any) {
        
        doughBool = true
    }
    
    @IBAction func cheeseButton(_ sender: Any) {
        
        cheeseBool = true
    }
    
    @IBAction func ingredientsButton(_ sender: Any) {
        
        ingredientsBool = true
    }
    
    override func viewWillAppear(_ animated: Bool) {
        if(sizeBool == true || doughBool == true || cheeseBool == true || ingredientsBool == true){
            
            confirmationButton.isHidden = false
        }
    }
    
}
