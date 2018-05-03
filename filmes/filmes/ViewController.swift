//
//  ViewController.swift
//  filmes
//
//  Created by Jonathan Loureiro on 02/05/2018.
//  Copyright © 2018 Jonathan Loureiro. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    var filmes: [Filme] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.filmes.append(Filme(titulo: "Filme1", descricao: "Descrição1", img: #imageLiteral(resourceName: "filme1")))
        self.filmes.append(Filme(titulo: "Filme2", descricao: "Descrição2", img: #imageLiteral(resourceName: "filme2")))
        self.filmes.append(Filme(titulo: "Filme2", descricao: "Descrição2", img: #imageLiteral(resourceName: "filme3")))
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filmes.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let filme: Filme = filmes[indexPath.row]
        
        let celulaReuso = "celulaReuso"
        
        let celula:  FilmeCelula = tableView.dequeueReusableCell(withIdentifier: celulaReuso, for: indexPath) as! FilmeCelula
        
        celula.tituloLabel.text = filme.titulo
        celula.filmeIMG.image = filme.img
        celula.descricaoLabel.text = filme.descricao
        /*celula.filmeIMG.layer.cornerRadius = 42
        
        celula.filmeIMG.clipsToBounds = true*/
        
        
        /*celula.textLabel?.text = filme.titulo
        celula.imageView?.image = filme.img*/
        
        return celula
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "detalheFilme" {
            if let indexPath = tableView.indexPathForSelectedRow {
                let filmeSelecionado = self.filmes[indexPath.row]
                let viewControllerDestino = segue.destination as! DetalhesFilmesViewController
                viewControllerDestino.filme = filmeSelecionado
                
            }
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

