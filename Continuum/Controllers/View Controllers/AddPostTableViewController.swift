//
//  AddPostTableViewController.swift
//  Continuum
//
//  Created by Drew Seeholzer on 7/9/19.
//  Copyright © 2019 Drew Seeholzer. All rights reserved.
//

import UIKit

class AddPostTableViewController: UITableViewController {
    
    
    @IBOutlet weak var photoImageView: UIImageView!
    @IBOutlet weak var selectImageButton: UIButton!
    @IBOutlet weak var captionTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        selectImageButton.setTitle("Select Image", for: .normal)
        photoImageView.image = nil
        captionTextField.text = nil
    }

    
    @IBAction func selectImageButtonTapped(_ sender: Any) {
        photoImageView.image = UIImage(named: "spaceEmptyState")
        selectImageButton.setTitle("", for: .normal)
    }
    
    @IBAction func addPostButtonTapped(_ sender: Any) {
        guard let photo = photoImageView.image,
            let caption = captionTextField.text else { return }
        PostController.sharedInstance.createPostWith(photo: photo, caption: caption) { (post) in
            
        }
        self.tabBarController?.selectedIndex = 0
    }
    
    @IBAction func cancelButtonTapped(_ sender: Any) {
        self.tabBarController?.selectedIndex = 0
    }
    
}
