//
//  PostController.swift
//  Continuum
//
//  Created by Drew Seeholzer on 7/9/19.
//  Copyright © 2019 Drew Seeholzer. All rights reserved.
//

import UIKit

class PostController {
    
    static let sharedInstance = PostController()
    //What's this do
    private init () {}
    
    var posts: [Post] = []
    
    func addComment(text: String, post: Post, completion: (Comment) -> Void) {
        let comment = Comment(text: text, post: post)
        post.comments.append(comment)
    }
    
    func createPostWith(photo: UIImage, caption: String, completion: (Post?) -> Void) {
        let post = Post(photo: photo, caption: caption)
        posts.append(post)
    }
}
