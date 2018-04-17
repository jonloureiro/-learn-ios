//
//  ViewController.swift
//  tableview-alert
//
//  Created by Jonathan Loureiro on 17/04/2018.
//  Copyright © 2018 Jonathan Loureiro. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    var array: [String] = []
    var texto: [String] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        array.append("oi1")
        array.append("oi2")
        array.append("oi3")
        array.append("oi4")
        array.append("oi5")
        array.append("oi6")
        array.append("oi7")
        array.append("oi8")
        array.append("oi9")
        array.append("oi0")
        array.append("oi-")
        array.append("oi=")
        array.append("oi1")
        array.append("oi2")
        array.append("oi3")
        array.append("oi4")
        array.append("oi5")
        array.append("oi6")
        array.append("oi7")
        array.append("oi7")

        
        texto.append("blablablabla")
        texto.append("blablablabla")
        texto.append("blablablabla")
        texto.append("blablablabla")
        texto.append("blablablabla")
        texto.append("blablablabla")
        texto.append("blablablabla")
        texto.append("blablablabla")
        texto.append("blablablabla")
        texto.append("blablablabla")
        texto.append("blablablabla")
        texto.append("blablablabla")
        texto.append("blablablabla")
        texto.append("blablablabla")
        texto.append("blablablabla")
        texto.append("blablablabla")
        texto.append("blablablabla")
        texto.append("blablablabla")

    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celula = tableView.dequeueReusableCell(withIdentifier: "celulaReuso", for: indexPath)
        celula.textLabel?.text = array[indexPath.row]
        
        return celula
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let alertaController = UIAlertController(title: "Título", message: texto[indexPath.row], preferredStyle: .actionSheet)
        let acaoConfirmar = UIAlertAction(title: "ok", style: .default, handler: nil)
        
        alertaController.addAction(acaoConfirmar)
        
        present(alertaController, animated: true, completion: nil)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

