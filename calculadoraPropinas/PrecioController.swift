//
//  PrecioController.swift
//  calculadoraPropinas
//
//  Created by Ramiro y Jennifer on 23/03/21.
//

import UIKit

class PrecioController: UIViewController {

    var precio_total:String?
    
    @IBOutlet weak var label_precio_total: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label_precio_total.text = "\(precio_total!) pesos"

        
    }
    
    
    @IBAction func regresar(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
