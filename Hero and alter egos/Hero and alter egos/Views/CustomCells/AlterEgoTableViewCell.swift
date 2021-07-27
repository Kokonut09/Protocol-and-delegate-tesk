//
//  AlterEgoTableViewCell.swift
//  Hero and alter egos
//
//  Created by Andrew Saeyang on 7/26/21.
//

import UIKit

class AlterEgoTableViewCell: UICollectionViewCell {

    // MARK: - OUTLETS
    @IBOutlet weak var heroImageView: UIImageView!
    
    // MARK: - PROPERTIES
    
    
    // MARK: - HELPER METHODS
    
    func displayImageFor(hero: Hero) {
        heroImageView.image = HeroController.shared.getHeroImage(hero: hero)
        heroImageView.contentMode = .scaleAspectFit
        heroImageView.clipsToBounds = true
        
    }

}
