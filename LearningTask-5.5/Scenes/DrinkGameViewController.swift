//
//  ViewController.swift
//  LearningTask-5.5
//
//  Created by rafael.rollo on 12/03/2022.
//

import UIKit

class DrinkGameViewController: UIViewController {

    @IBOutlet weak var bebidaAnteriorLabel: UILabel!
    
    @IBOutlet weak var bebidaSorteadaLabel: UILabel!
    //injecao de dependencia
    var game: DrinkGame? {
        didSet {
            guard isViewLoaded, let game = game else {return}
            atualizaViews(game: game)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let game = game {
            atualizaViews(game: game)
        }
    }

    
    @IBAction func botaoPlayPressionado(_ sender: UIButton) {
        game?.executar()
    }
    
    func atualizaViews(game: DrinkGame) {
        bebidaAnteriorLabel.text = game.bebidaAnterior.trecho
        bebidaSorteadaLabel.text = game.bebidaSorteada.trecho
        
        view.backgroundColor = BackgroundColor.para(game.bebidaSorteada)
    }
}

