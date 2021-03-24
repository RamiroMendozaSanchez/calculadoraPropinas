
import Foundation

struct calcular_precio {
    
    var  valor:variables?

    mutating func calculo_total(total:Float, porcentaje:Float, personas:Float) {
        let calculo_total_pagar = (((total * porcentaje)/100)/personas)-1
        
        if calculo_total_pagar > 0{
            valor = variables(total: calculo_total_pagar)
        }
    }
    
    func sendValor() -> String {
        let total = String(format: "%.0f", valor?.total ?? 0.0)
        return total
    }
    
    
}
