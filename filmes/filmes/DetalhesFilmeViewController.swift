//
//  DetalhesFilmeViewController.swift
//  filmes
//
//  Created by Jonathan Loureiro on 02/05/2018.
//  Copyright © 2018 Jonathan Loureiro. All rights reserved.
//

import UIKit

class DetalhesFilmesViewController: UIViewController {
    
    var filme: Filme!
    
    @IBOutlet weak var filmeImageView: UIImageView!
    @IBOutlet weak var tituloLabel: UILabel!
    @IBOutlet weak var descricaoLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        filmeImageView.image = filme.img
        tituloLabel.text = filme.titulo
        descricaoLabel.text = filme.descricao
        
    }
}
