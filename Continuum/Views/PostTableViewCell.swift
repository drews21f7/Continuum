//
//  PostTableViewCell.swift
//  Continuum
//
//  Created by Drew Seeholzer on 7/9/19.
//  Copyright © 2019 Drew Seeholzer. All rights reserved.
//

import UIKit

class PostTableViewCell: UITableViewCell {


    @IBOutlet weak var postPhotoImageView: UIImageView!
    @IBOutlet weak var captionLabel: UILabel!
    @IBOutlet weak var commentCountLabel: UILabel!
    
    var post: Post? {
        didSet {
            updateViews()
        }
    }
    
    func updateViews() {
        postPhotoImageView.image = post?.photo
        captionLabel.text = post?.caption
        //posts number of how many comments there are, or 0 if there are none
        commentCountLabel.text = "\(post?.comments.count ?? 0)"
    }
    
}
