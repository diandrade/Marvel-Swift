//
//  ViewController+UITableView.swift
//  Marvel
//
//  Created by iOS Lab on 22/06/24.
//
import UIKit

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        10
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        150
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let baseCell = tableView.dequeueReusableCell(withIdentifier: "heroCell", for: indexPath)
        let cell = baseCell as? HeroCell
        guard let cell else {
            return baseCell
        }
        cell.setup(name: "Homem de Ferro", image: UIImage())
        return cell
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Clicou")
    }
    
    
}
