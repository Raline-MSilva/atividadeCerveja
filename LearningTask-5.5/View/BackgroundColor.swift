
import UIKit

class BackgroundColor {
    
    static func para(_ bebida: DrinkGame.Bebida) -> UIColor {
        switch bebida {
            
        case .leite:
            return UIColor(named: "Milk") ?? .white
            
        case .cerveja:
            return UIColor(named: "Beer") ?? .systemYellow
            
        case .whisky:
            return UIColor(named: "Whisky") ?? .systemBrown
        
        default:
            return .white
        }
        
    }
    
}
// ?? converte a cor
