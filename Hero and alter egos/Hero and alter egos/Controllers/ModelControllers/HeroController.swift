//
//  HeroController.swift
//  Hero and alter egos
//
//  Created by Andrew Saeyang on 7/25/21.
//

import UIKit
class HeroController{
    
    static let shared = HeroController()
    
     var heros = [Hero(heroName: "Captain America", alterEgo: "Steve Rogers", heroImage: UIImage(named: "captain"), alterEgoImage: UIImage(named: "steve")),
                        Hero(heroName: "Iron Man", alterEgo: "Tony Stark", heroImage: UIImage(named: "ironman"), alterEgoImage: UIImage(named: "tony")),
                        Hero(heroName: "Thor", alterEgo: "Thor", heroImage:UIImage(named: "thor"), alterEgoImage:UIImage(named: "thor2")),
                        Hero(heroName: "Hulk", alterEgo: "Bruce Banner", heroImage:UIImage(named: "hulk"), alterEgoImage:UIImage(named: "bruce"))]
    
    func getHeroImage(hero: Hero) -> UIImage{
        
        return hero.isHeroForm ? hero.heroImage! : hero.alterEgoImage!
    
    }
    func toggleHeroForm(){

        heros.forEach { hero in
            hero.isHeroForm.toggle()
        }
    }
    
} // End of class
