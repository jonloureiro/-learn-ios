//
//  ViewController.swift
//  alerta
//
//  Created by Jonathan Loureiro on 17/04/2018.
//  Copyright © 2018 Jonathan Loureiro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func abrirAlerta(_ sender: Any) {
        let alerta = UIAlertController(title: "Testando", message: "msg msg msg msg", preferredStyle: .actionSheet)
        
        let confirmar = UIAlertAction(title: "Confirmar", style: .default, handler: nil)
        let cancelar = UIAlertAction(title: "Cancelar", style: .destructive, handler: nil)
        
        alerta.addAction(confirmar)
        alerta.addAction(cancelar)
        present(alerta, animated: true, completion: nil)
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

