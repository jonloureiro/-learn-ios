//
//  ViewController.swift
//  Frases do dia
//
//  Created by Jonathan Loureiro on 12/04/2018.
//  Copyright © 2018 Jonathan Loureiro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var legendaResultado: UILabel!
    
    @IBAction func novaFrase(_ sender: Any) {
        var frases: [String] = []
        frases.append("\"Confissão frequente, comunhão frequente, Missa diária: são estes os pilares que sustêm todo o edifício da educação.\" -- Regras")
        frases.append("\"O tocar nas sagradas Espécies e a distribuição destas com as próprias mãos é um privilégio dos ordenados, (...)\" -- Dominicae Cenae")
        frases.append("\"Na linha do horizonte, meus filhos, parecem unir-se o ceu e a terra. Mas não, onde se juntam deveras é nos vossos coracões, quando viveis santamente a vida de cada dia.\" -- Homilia Amar o mundo apaixonadamente")
        
        let i = Int(arc4random_uniform(3))
        legendaResultado.text = frases[i]
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

