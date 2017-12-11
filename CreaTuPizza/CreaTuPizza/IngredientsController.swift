//
//  IngredientsController.swift
//  CreaTuPizza
//
//  Created by Aranzza Abascal on 11/12/17.
//  Copyright © 2017 Aranzza Abascal. All rights reserved.
//

import UIKit

class IngredientsController: UITableViewController {
    
    let ingredients = ["Jamón", "Peperoni", "Pavo", "Salchicha", "Aceituna", "Cebolla", "Pimiento", "Piña", "Anchoa", "Pollo", "Tocino"]
    
    var selected = [""]
    
    var counter = 0
    
    var pizzaSize = ""
    var doughType = ""
    var cheese = ""
    var numIngredients = 0
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return ingredients.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.textLabel?.text = ingredients[indexPath.row]
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if(counter == numIngredients){
            
            let nextView = storyboard?.instantiateViewController(withIdentifier: "ConfirController") as! ConfirController
            
            nextView.pizzaSize = pizzaSize
            nextView.doughType = doughType
            nextView.cheese = cheese
            nextView.numIngredients = numIngredients
            
            navigationController?.pushViewController(nextView, animated: true)
            
        }
        
        if (tableView.cellForRow(at: indexPath)?.accessoryType == UITableViewCellAccessoryType.checkmark){
            tableView.cellForRow(at: indexPath)?.accessoryType = UITableViewCellAccessoryType.none
            counter -= 1
        }
        else if (counter < numIngredients){
            tableView.cellForRow(at: indexPath)?.accessoryType = UITableViewCellAccessoryType.checkmark
            counter += 1
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
