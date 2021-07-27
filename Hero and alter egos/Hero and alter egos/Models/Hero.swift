//
//  Hero.swift
//  Hero and alter egos
//
//  Created by Andrew Saeyang on 7/25/21.
//

import UIKit

class Hero{
    let heroName: String
    let alterEgo: String
    let heroImage: UIImage?
    let alterEgoImage: UIImage?
    var isHeroForm: Bool
    
    
    init(heroName: String, alterEgo: String, heroImage: UIImage?, alterEgoImage: UIImage?, isHeroForm: Bool = true) {
        self.heroName = heroName
        self.alterEgo = alterEgo
        self.heroImage = heroImage
        self.alterEgoImage = alterEgoImage
        self.isHeroForm = isHeroForm
        
    }
}

