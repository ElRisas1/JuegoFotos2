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
        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var ImagenModificable: UIImageView!

    
    var contador:Bool = true
    
    func iniciarFotos(){
        Timer.scheduledTimer(withTimeInterval: 3, repeats: true) { timer in
            self.cambiarFotos()
        }
    }
    func cambiarFotos(){
        
        ImagenModificable.image = UIImage(named: randomizadorDeFotos())
        print("Se ha repetido 1 vez")
    }
    
    func randomizadorDeFotos()->String{
        
        var fotorandom = ""
        let Fotos = [
            "MarioHub_Luigi",
            "AnimalCrossing",
            "AnimalCrossing2",
            "character-geeta",
            "character-nemona",
            "MarioHub",
            "MarioKart1",
            "Mariokart2",
            "nintendo-switch-sports-2690261",
            "pokemon-iron_valiant",
            "pokemon-walking_wake",
            "switch_nintendoswitchsports_screen_06"
            
        ]
        
        return fotorandom
    }
}


