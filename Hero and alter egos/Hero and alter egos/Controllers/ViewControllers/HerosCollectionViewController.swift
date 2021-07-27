//
//  HerosCollectionViewController.swift
//  Hero and alter egos
//
//  Created by Andrew Saeyang on 7/25/21.
//

import UIKit

class HerosCollectionViewController: UICollectionViewController {

    
    //MARK: - LIFECYCLES
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    // MARK: UICollectionViewDataSource

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return 4
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "heroCell", for: indexPath) as? AlterEgoTableViewCell else {return UICollectionViewCell()}
    
        let hero = HeroController.shared.heros[indexPath.row]
        
        cell.displayImageFor(hero: hero)
        
        return cell
    }

    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let destination = segue.destination as? AlterEgoViewController else { return }
        destination.delegate = self
       
        //destination.updateViews(with: HeroController.shared.heros[indexpath.row])
    }
    
    // MARK: UICollectionViewDelegate

}

extension HerosCollectionViewController: UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        //we want 90% of the screen to be used, 2 cards / 2 - 45%
        let width = view.frame.width * 0.45
        
        return CGSize(width: width, height: width * 4 / 3)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        
        let width = view.frame.width * 0.45
        
        let cellsTotalWidth = width * 2
        
        let leftOverWidth = view.frame.width - cellsTotalWidth
        
        let inset = leftOverWidth / 3
        //insets == padding
        return UIEdgeInsets(top: inset, left: inset, bottom: 0, right: inset)
    }
}

extension HerosCollectionViewController: AlterEgoViewDelegate{
    func updateHeroForm() {
        HeroController.shared.toggleHeroForm()
        collectionView.reloadData()
    }
}


