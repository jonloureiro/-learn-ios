//
//  ViewController.swift
//  numeros-randomicos
//
//  Created by Jonathan Loureiro on 10/04/2018.
//  Copyright © 2018 Jonathan Loureiro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var legendaResultado: UILabel!
    @IBOutlet weak var legendaResultadoAnterior: UILabel!
    
    @IBAction func gerarNumero(_ sender: Any) {
        let num = arc4random_uniform(10)
        legendaResultadoAnterior.text = "Número gerado anteriormente: "+legendaResultado.text!
        legendaResultado.text = String(num)
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

