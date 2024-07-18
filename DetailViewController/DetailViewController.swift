//
//  DetailViewController.swift
//  marvel
//
//  Created by iOSLab on 11/07/24.
//

import UIKit



class DetailViewController: UIViewController {
    @IBOutlet weak var heroImage: UIImageView!
    @IBOutlet weak var heroDescription: UITextView!
    @IBOutlet weak var heroName: UILabel!
    var delegate: DetailViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let hero = delegate?.getHero() else {
            //
            return
        }
        heroImage.image = hero.image
        heroName.text = hero.name
        heroDescription.text = hero.description
    }
}
