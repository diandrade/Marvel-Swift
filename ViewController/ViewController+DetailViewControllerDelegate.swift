//
//  ViewController+DetailViewControllerDelegate.swift
//  marvel
//
//  Created by iOSLab on 18/07/24.
//

import Foundation

extension ViewController: DetailViewControllerDelegate {
    func getHero() -> Hero? {
        guard let lastIndexPath else {
            return nil
        }
        return heroes[lastIndexPath]
    }
}
