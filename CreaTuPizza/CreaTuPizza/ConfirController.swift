//
//  ConfirController.swift
//  CreaTuPizza
//
//  Created by Aranzza Abascal on 11/12/17.
//  Copyright © 2017 Aranzza Abascal. All rights reserved.
//

import UIKit

class ConfirController: UIViewController {

    
    @IBOutlet weak var sizeLabel: UILabel!
    @IBOutlet weak var doughLabel: UILabel!
    @IBOutlet weak var cheeseLabel: UILabel!
    @IBOutlet weak var ingredientsLabel: UILabel!
    
    
    var pizzaSize = ""
    var doughType = ""
    var cheese = ""
    var numIngredients = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        sizeLabel.text = pizzaSize
        doughLabel.text = doughType
        cheeseLabel.text = cheese
        ingredientsLabel.text = String(numIngredients + 1)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
