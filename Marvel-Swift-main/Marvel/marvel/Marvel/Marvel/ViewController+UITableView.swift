//
//  ViewController+UITableView.swift
//  Marvel
//
//  Created by iOS Lab on 22/06/24.
//
import UIKit

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        heroes.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        Constants.heroCellHeight
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Constants.heroCellName, for: indexPath)
        guard let herocell = cell as? HeroCell else {
            return cell
        }
        
        let hero = heroes[indexPath.row]
        herocell.setup(name: hero.name, image: hero.image)
        return herocell
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Clicou")
    }
    
    
}
