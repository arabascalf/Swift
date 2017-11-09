//
//  ViewController.swift
//  Hamburguesa
//
//  Created by Aranzza Abascal on 09/11/17.
//  Copyright © 2017 Aranzza Abascal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var etiquetaPaises: UILabel!
    @IBOutlet weak var etiquetaHamburguesas: UILabel!
    @IBOutlet weak var boton: UIButton!
    
    let paises = ColeccionDePaises()
    let hamburguesas = ColeccionDeHamburguesas()
    let colores = ColeccionDeColores()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func cambiarEtiquetas() {
        let pais = paises.obtenPais()
        let hamburguesa = hamburguesas.obtenHamburguesa()
        let color = colores.obtenColor()
        
        etiquetaPaises.text = pais
        etiquetaHamburguesas.text = hamburguesa
        view.backgroundColor = color
        view.tintColor = color
        boton.backgroundColor = UIColor(red:0/255.0, green: 0/255.0, blue: 0/255.0, alpha: 1)
    }
}

