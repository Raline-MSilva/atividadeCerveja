//
//  DrinkGame.swift
//  LearningTask-5.5
//
//  Created by Raline Maria da Silva on 03/09/22.
//

import UIKit

struct DrinkGame {
    // permite a leitura dos valores
    private(set) var bebidaAnterior = Bebida.naoSorteado
    private(set) var bebidaSorteada = Bebida.naoSorteado
    
    mutating func executar() {
        //sorteio de 1 a 3
        let numeroSorteado = Int.random(in: 1...3)
        
        bebidaAnterior = bebidaSorteada
        bebidaSorteada = Bebida(rawValue: numeroSorteado)!
    }
    
    // propriedade armazenada?
    enum Bebida: Int {
        case naoSorteado = 0
        case leite = 1, cerveja, whisky
        
        var trecho: String {
            switch self {
            case .leite:
                return "🥛"
                
            case .cerveja:
                return "🍺"
                
            case .whisky:
                return "🥃"
                
            default:
                return "🙋"
            }
        }
    }
}
