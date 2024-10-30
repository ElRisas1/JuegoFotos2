//
//  SegundaPantalla.swift
//  JuegoFotos2
//
//  Created by Sofía Bongartz on 23/10/24.
//

import UIKit

class SegundaPantalla: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       
        iniciarFotos()
        resultadosCorrectos.removeFirst()
        
        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var ImagenModificable: UIImageView!

    @IBAction func ButtonContinue(_ sender: Any) {
    }
    
    var contador:Bool = true
    
    func iniciarFotos(){
    

        Timer.scheduledTimer(withTimeInterval: 3, repeats: true) { timer in
            if self.resultadosCorrectos.count <= 4{self.cambiarFotos()}
            else{
                print("Salio del supuesto bucle")
                
            
            }
            
        }
        
    }
    func cambiarFotos(){
        
        ImagenModificable.image = UIImage(named: randomizadorDeFotos())
        
        // print("Se ha repetido 1 vez")
    }
    
    func randomizadorDeFotos()->String{
        
      
        var Fotos = [
            "MarioHub_Luigi",
            "AnimalCrossing",
            "AnimalCrossing2",
            "character-geeta",
            "character-nemona",
            "MarioHub",
            "MarioKart1",
            "Mariokart2",
            "nintendoSwichtSport",
            "pokemon-iron_valiant",
            "pokemon-walking_wake",
            "switchSport"
        ]
        
        let fotoRandom = Fotos.randomElement()!
        
        if Fotos.contains(fotoRandom){
        
        }
      
        resultadosCorrectos.append(fotoRandom)
        print(resultadosCorrectos)
        return fotoRandom
    }
    
    var resultadosCorrectos = [""]
}


