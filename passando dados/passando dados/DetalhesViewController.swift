//
//  DetalhesViewController.swift
//  passando dados
//
//  Created by Jonathan Loureiro on 16/04/2018.
//  Copyright © 2018 Jonathan Loureiro. All rights reserved.
//

import UIKit

class DetalhesViewController: UIViewController {

    @IBOutlet weak var resultadoLegenda: UILabel!
    var textoRecebido: String = "0"

    override func viewDidLoad() {
        super.viewDidLoad()

        resultadoLegenda.text = textoRecebido
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
