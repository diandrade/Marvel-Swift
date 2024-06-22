//
//  ViewController.swift
//  Marvel_API
//
//  Created by iOSLab on 22/06/24.
//

import UIKit
import 

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        // Do any additional setup after loading the view.
    }
}
