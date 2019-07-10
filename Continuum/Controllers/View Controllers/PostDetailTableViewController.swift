//
//  PostDetailTableViewController.swift
//  Continuum
//
//  Created by Drew Seeholzer on 7/9/19.
//  Copyright © 2019 Drew Seeholzer. All rights reserved.
//

import UIKit

class PostDetailTableViewController: UITableViewController {
    
    var post: Post? {
        didSet {
            updateViews()
        }
    }

    @IBOutlet weak var photoImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    func updateViews() {
        photoImageView.image = post?.photo
        tableView.reloadData()
    }

    @IBAction func commentButtonTapped(_ sender: Any) {
    }
    
    @IBAction func shareButtonTapped(_ sender: Any) {
    }
    @IBAction func followPostButtonTapped(_ sender: Any) {
    }
}


extension PostDetailTableViewController {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return post?.comments.count ?? 0
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "commentCell", for: indexPath)
        let comment = post?.comments[indexPath.row]
        cell.textLabel?.text = comment?.text
        cell.detailTextLabel?.text = comment?.timestamp.formatDate()
        
        return cell
    }
}
