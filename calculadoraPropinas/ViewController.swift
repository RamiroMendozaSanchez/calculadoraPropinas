//
//  ViewController.swift
//  calculadoraPropinas
//
//  Created by Ramiro y Jennifer on 22/03/21.
//

import UIKit

class ViewController: UIViewController {

    var cach_data = calcular_precio()
    @IBOutlet weak var label_slide_persona: UILabel!
    @IBOutlet weak var label_slide_porcentaje: UILabel!
    @IBOutlet weak var slide_porcentaje: UISlider!
    @IBOutlet weak var slide_personas: UISlider!
    @IBOutlet weak var total_persoonas: UILabel!
    @IBOutlet weak var porcentaje: UILabel!
    @IBOutlet weak var total_pagar: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func calcular(_ sender: UIButton) {
        
        let cuenta:String? = total_pagar.text
        let porcentaje:Float? = slide_porcentaje.value
        let personas:Float? = slide_personas.value
        
        //let total = (Float(cuenta!) ?? 0.0 / porcentaje)/personas
        
        //print("\(total)")
        
        cach_data.calculo_total(total: Float(cuenta!) ?? 0.0, porcentaje: Float(porcentaje!) ?? 0.0, personas: Float(personas!) ?? 0.0)
        
        performSegue(withIdentifier: "send_view", sender: self)

        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "send_view" {
            let destino_PC = segue.destination as! PrecioController
            //let mycalculos = calcular_precio()
            destino_PC.precio_total = cach_data.sendValor()
            
        }
    }
    
    
    @IBAction func slideAC_porcentaje(_ sender: UISlider) {
        label_slide_porcentaje.text = "\(String (format: "%.0f",sender.value))%"
    }
    
    
    
    @IBAction func slideAC_persona(_ sender: UISlider) {
        label_slide_persona.text = "\(String (format:"%.0f" , sender.value))"
        
    }
}

