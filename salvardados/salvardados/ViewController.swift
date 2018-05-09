//
//  ViewController.swift
//  salvardados
//
//  Created by Jonathan Loureiro on 03/05/2018.
//  Copyright © 2018 Jonathan Loureiro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //UserDefaults.standard.set("azul", forKey: "corFundo")
        
        
        //var comidas: [String] = ["Comida1", "comida2", "Comida"]
        //UserDefaults.standard.set(comidas, forKey: "comidas")
        
        UserDefaults.standard.removeObject(forKey: "comidas")
        var texto = UserDefaults.standard.object(forKey: "comidas")

        //texto = UserDefaults.standard.object(forKey: "comidas")
        print(texto)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

