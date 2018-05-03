//
//  ViewController.swift
//  tentativa2
//
//  Created by Jonathan Loureiro on 02/05/2018.
//  Copyright © 2018 Jonathan Loureiro. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    var posts: [Post] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.posts.append(
            Post(
                title: "Título 1",
                text: "Lorem Lorem Lorem",
                tag: "Shalom",
                image: #imageLiteral(resourceName: "img1")
            )
        )
        self.posts.append(
            Post(
                title: "Título 2",
                text: "Lorem Lorem Lorem",
                tag: "Shalom",
                image: #imageLiteral(resourceName: "img2")
            )
        )
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.posts.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let post: Post = posts[indexPath.row]
        let celulaIdentifier = "celulaPost"
        let celulaPost: CelulaPost = tableView.dequeueReusableCell(withIdentifier: celulaIdentifier, for: indexPath) as! CelulaPost
        
        celulaPost.postTitle.text = post.title
        celulaPost.postTag.text = post.tag
        celulaPost.postImage.image = post.img
        
        return celulaPost
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}

