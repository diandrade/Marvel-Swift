//
//  HeroCell.swift
//  Marvel
//
//  Created by iOS Lab on 29/06/24.
//

import UIKit

class HeroCell: UITableViewCell {
    @IBOutlet weak var imageInput: UIImageView!
    @IBOutlet weak var nameInput: UILabel!
    
    func setup (name: String, image:UIImage){
        nameInput.text = name
        imageInput.image = image
    }
    
}
