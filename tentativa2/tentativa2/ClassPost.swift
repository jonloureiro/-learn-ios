//
//  ClassPost.swift
//  prototipo
//
//  Created by Jonathan Loureiro on 02/05/2018.
//  Copyright © 2018 Jonathan Loureiro. All rights reserved.
//

import UIKit

class Post {
    
    var title: String!
    var txt: String!
    var tag: String!
    var img: UIImage
    //var date: Date
    
    init( title: String, text: String, tag: String, image: UIImage/*, date: Date*/ ) {
        self.title = title
        self.txt = text
        self.tag = tag
        self.img = image
        //self.date = date
    }
    
}
