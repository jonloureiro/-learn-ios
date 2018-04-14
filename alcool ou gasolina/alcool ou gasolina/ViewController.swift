//
//  ViewController.swift
//  alcool ou gasolina
//
//  Created by Jonathan Loureiro on 12/04/2018.
//  Copyright © 2018 Jonathan Loureiro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var resposta: UILabel!
    @IBOutlet weak var precoGasolina: UITextField!
    @IBOutlet weak var precoAlcool: UITextField!
    
    @IBAction func calcular(_ sender: Any) {
        if let precoGasolina = self.precoGasolina.text {
            if let precoAlcool = self.precoAlcool.text {
                if self.validarCampos(gasolina: precoGasolina, alcool: precoAlcool) {
                    self.calcularMelhorPreco(precoAlcool: precoAlcool, precoGasolina: precoGasolina)
                } else {
                    self.resposta.text = "Campos inválidos!"
                }
            }
        }
    }
    
    func calcularMelhorPreco (precoAlcool: String, precoGasolina: String) {
        if let valorAlcool = Double(precoAlcool) {
            if let valorGasolina = Double(precoGasolina) {
                let resultadoPreco = valorAlcool / valorGasolina
                if resultadoPreco >= 0.7 {
                    self.resposta.text = "Melhor utilizar Gasolina"
                } else {
                    self.resposta.text = "Melhor utilizar Alcool"
                }
            }
        }
    }

    func validarCampos (gasolina: String, alcool: String) -> Bool {
        var camposValidados = true
        
        if gasolina.isEmpty {
            camposValidados = false
        } else if alcool.isEmpty {
            camposValidados = false
        }
        
        return camposValidados
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

