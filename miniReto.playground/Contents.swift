//Semana 2: Mini Reto

/*
 
 Crear una serie del 0 al 100 (incliur ambos elementos)
 Si el número es divisible entre 5: imprimir #Bingo!!!
 Si el número es par: #par
 Si el número es impar: #impar
 Si el número está entre 30 y 40: #Viva Swift!!!
 
*/

import UIKit

/*
 Ciclo for-each para recorrer los elementos, no pude realizar un for tradicional porque no supe cómo hacerlo en Swift 3
*/
for i in 0...100 {
    
    if (i % 2 == 0){
        print("\(i) par")
    }
    
    if (i % 2 != 0){
        print("\(i) impar")
    }
    
    if (i % 5 == 0){
        print("\(i) Bingo!!!")
    }
    
    if (i >= 30 && i <= 40){
        print("\(i) Viva Swift!!!")
    }
    
    print("\n")
}
