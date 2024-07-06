//
//  ViewController.swift
//  Marvel
//
//  Created by iOS Lab on 22/06/24.
//

import UIKit

class ViewController: UIViewController {
    var heroes: [Hero] = [Hero(name: "Hulk", image: UIImage()), Hero(name: "Aranha", image: UIImage()), Hero(name: "Thor", image: UIImage())]
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        // Do any additional setup after loading the view.
    }
}
