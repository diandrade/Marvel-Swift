//
//  HeroCell.swift
//  marvel
//
//  Created by iOSLab on 04/07/24.
//

import UIKit

class HeroCell: UITableViewCell{
    @IBOutlet weak var imageInput: UIImageView!
    @IBOutlet weak var nameInput: UILabel!
    
    func setup(name: String, image: UIImage) {
        nameInput.text = name
        imageInput.image = image
    }
}
