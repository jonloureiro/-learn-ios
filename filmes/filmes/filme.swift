//
//  filme.swift
//  filmes
//
//  Created by Jonathan Loureiro on 02/05/2018.
//  Copyright © 2018 Jonathan Loureiro. All rights reserved.
//

import UIKit

class Filme {
    var titulo: String!
    var descricao: String!
    var img: UIImage
    
    init (titulo: String, descricao: String, img: UIImage) {
        self.titulo = titulo
        self.descricao = descricao
        self.img = img
    }
}
