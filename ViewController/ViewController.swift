//
//  ViewController.swift
//  marvel
//
//  Created by iOSLab on 27/06/24.
//

import UIKit

class ViewController: UIViewController {
    var lastIndexPath: Int? = nil
    let heroes: [Hero] = [Hero(name: "Homem Aranha", image: UIImage(), description: "Soltou Teias."),
                          Hero(name: "Homem De Ferro", image: UIImage(), description: "É um bilionário"),
                          Hero(name: "Thor", image: UIImage(), description: "Solta raios")]

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource  = self
        tableView.delegate = self
    }
}


