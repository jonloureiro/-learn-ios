//
//  ViewController.swift
//  first-app
//
//  Created by Jonathan Loureiro on 10/04/2018.
//  Copyright © 2018 Jonathan Loureiro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var legendaResultado: UILabel!
    
    @IBOutlet weak var campoIdadeCachorro: UITextField!
    
    @IBAction func descobrirIdade(_ sender: Any) {
        print("Botão pressionado!")
        let idade = Int(campoIdadeCachorro.text!)! * 7
        legendaResultado.text = "Seu cachorro tem "+String(idade)+" anos humanos"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Primeiro App")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

