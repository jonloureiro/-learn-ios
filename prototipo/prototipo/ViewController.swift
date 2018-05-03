//
//  ViewController.swift
//  prototipo
//
//  Created by Jonathan Loureiro on 02/05/2018.
//  Copyright © 2018 Jonathan Loureiro. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    var posts: [Post] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        posts.append( Post( title: "API TITLE1", text: "texto1", tag: "TAG1", image: #imageLiteral(resourceName: "img1") ) )
        posts.append( Post( title: "API TITLE2", text: "texto2", tag: "TAG2", image: #imageLiteral(resourceName: "img2") ) )
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return posts.count
    }
    
    /*override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let post: Post = posts[ indexPath.row ]
        let postHome = "postHome"
        
    }*/
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}

