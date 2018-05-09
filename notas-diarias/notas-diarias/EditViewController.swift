//
//  EditViewController.swift
//  notas-diarias
//
//  Created by Jonathan Loureiro on 09/05/2018.
//  Copyright © 2018 Jonathan Loureiro. All rights reserved.
//

import UIKit
import CoreData

class EditViewController: UIViewController {
    var context: NSManagedObjectContext!
    var anotacao: NSManagedObject!
    @IBOutlet weak var texto: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.texto.becomeFirstResponder()
        
        if anotacao != nil {
            if let textoRecuperado = anotacao.value(forKey: "texto") {
                self.texto.text = String(describing: textoRecuperado)
            }
        } else {
            self.texto.text = ""
        }
        
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        context = appDelegate.persistentContainer.viewContext
    }
    
    @IBAction func salvar(_ sender: Any) {
        if anotacao != nil {
            self.atualizarAnotacao()
            print("Anotaçaõ atualizada")
        } else {
            self.salvarAnotacao()
            print("Anotaçaõ salva")
        }
        self.navigationController?.popViewController(animated: true)
    }
    
    func atualizarAnotacao() {
        anotacao.setValue(self.texto.text, forKey: "texto")
        anotacao.setValue(Date(), forKey: "data")
    }
    
    func salvarAnotacao() {
        let novaAnotacao = NSEntityDescription.insertNewObject(forEntityName: "Anotacao", into: context)
        
        novaAnotacao.setValue(self.texto.text, forKey: "texto")
        novaAnotacao.setValue(NSDate(), forKey: "data")
        
        do {
            try context.save()
            print("Sucesso ao salvar")
        } catch let erro {
            print(erro.localizedDescription)
        }
    }
}
