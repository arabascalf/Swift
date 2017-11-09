//
//  Datos.swift
//  Hamburguesa
//
//  Created by Aranzza Abascal on 09/11/17.
//  Copyright © 2017 Aranzza Abascal. All rights reserved.
//

import Foundation
import UIKit

class ColeccionDePaises {
    
    let paises = ["México", "Argentina", "Belice", "Brasil", "Chile", "Colombia", "Costa Rica", "Cuba", "Puerto Rico", "El Salvador", "Ecuador", "Guatemala", "Honduras", "Jamaica", "Nicaragua", "Panamá", "Perú", "República Dominicana", "Uruguay", "Venezuela"]
    
    func obtenPais() -> String {
        
        let posicion = Int(arc4random()) % paises.count
        
        return paises[posicion]
    }
}

class ColeccionDeHamburguesas {
    
    let hamburguesas = ["Burger Joint", "La Xarcutería", "Butcher & Sons", "Cafe Clock", "Umami Burger", "Kiosco", "Flippin' Burgers", "New York Burger", "Barracuda Diner", "La Burguesía", "Burger 54", "Red Burger Society", "Slater's 50/50", "Ferburger", "Avila Burger", "Diablo Burger", "La Vaca Picada", "Meat Liquor", "Minetta Tavern", "Heart Attack Grill"]
    
    func obtenHamburguesa() -> String {
        let posicion = Int(arc4random()) % hamburguesas.count
        
        return hamburguesas[posicion]
    }
}

class ColeccionDeColores {
    
    let colores = [ UIColor(red:255/255.0, green: 204/255.0, blue: 229/255.0, alpha: 1),
                    UIColor(red:255/255.0, green: 204/255.0, blue: 255/255.0, alpha: 1),
                    UIColor(red:229/255.0, green: 204/255.0, blue: 255/255.0, alpha: 1),
                    UIColor(red:204/255.0, green: 204/255.0, blue: 255/255.0, alpha: 1),
                    UIColor(red:204/255.0, green: 229/255.0, blue: 255/255.0, alpha: 1),
                    UIColor(red:204/255.0, green: 255/255.0, blue: 255/255.0, alpha: 1),
                    UIColor(red:204/255.0, green: 255/255.0, blue: 229/255.0, alpha: 1),
                    UIColor(red:204/255.0, green: 255/255.0, blue: 204/255.0, alpha: 1),
                    UIColor(red:229/255.0, green: 255/255.0, blue: 204/255.0, alpha: 1),
                    UIColor(red:255/255.0, green: 255/255.0, blue: 204/255.0, alpha: 1),
                    UIColor(red:255/255.0, green: 229/255.0, blue: 204/255.0, alpha: 1),
                    UIColor(red:255/255.0, green: 204/255.0, blue: 204/255.0, alpha: 1)]
    
    func obtenColor() -> UIColor {
        let posicion = Int(arc4random()) % colores.count
        
        return colores[posicion]
    }
}

