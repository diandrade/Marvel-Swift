//
//  ViewCrontroller+UITableViewDelegates.swift
//  marvel
//
//  Created by iOSLab on 27/06/24.
//

import UIKit

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        lastIndexPath = indexPath.row
        let storyboard = UIStoryboard(name: Constants.storyboardName, bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: Constants.detailViewControllerName)
        guard let detailVC = vc as? DetailViewController else {
            
            return
        }
        detailVC.delegate = self
        navigationController?.pushViewController(detailVC, animated: true)
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        heroes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Constants.heroCellName, for: indexPath)
        guard let heroCell = cell as? HeroCell else {
         return cell
        }
        let hero = heroes[indexPath.row]
        heroCell.setup(name: hero.name, image: hero.image)
        return heroCell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        Constants.heroCellHeight
    }
    
    
}
