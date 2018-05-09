//
//  ViewController.swift
//  core data
//
//  Created by Jonathan Loureiro on 07/05/2018.
//  Copyright © 2018 Jonathan Loureiro. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext
        
        let requisicao = NSFetchRequest<NSFetchRequestResult>(entityName: "Produto")
        
        do {
            let produtos = try context.fetch(requisicao)
            if produtos.count > 0 {
                for produto in produtos as! [NSManagedObject] {
                    if let nome =  produto.value(forKey: "nome") {
                        if let preco = produto.value(forKey: "preco") {
                            print(String(describing: nome),"|", String(describing: preco))
                        }
                    }
                }
            }
        } catch {
            print("Erro ao recuperar os produtos")
        }
        
        
        /*let produto = NSEntityDescription.insertNewObject(forEntityName: "Produto", into: context)
        
        produto.setValue("Macbook Pro 15", forKey: "nome")
        produto.setValue("Prata", forKey: "cor")
        produto.setValue(199.99, forKey: "preco")
        
        do {
            try context.save()
            print("Sucesso ao salvar dados!")
        } catch {
            print("Erro ao salvar dados!")
        }*/

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}

