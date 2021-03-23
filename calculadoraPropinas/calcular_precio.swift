
import Foundation

struct calcular_precio {
    
    var  valor:variables?
    
    func sendValor() -> String {
        let total = String(format: "%.0f", valor?.total ?? 0.0)
        return total
    }
    
    func calculo_total(total:Float, porcentaje:Float, personas:Float) {
        let calculo_total_pagar = ((total * porcentaje)/100)/personas
    }
}
