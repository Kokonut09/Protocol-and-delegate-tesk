//
//  AlterEgoViewController.swift
//  Hero and alter egos
//
//  Created by Andrew Saeyang on 7/25/21.
//

import UIKit


protocol AlterEgoViewDelegate: AnyObject {
    func updateHeroForm()
    
}
class AlterEgoViewController: UIViewController {


    // MARK: - OUTLETS
    @IBOutlet weak var settingSwitch: UISwitch!
    
   
    // MARK: - PROPERTIES
    weak var delegate: AlterEgoViewDelegate?
    
   
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    // MARK: - ACTIONS
    
    @IBAction func heroSwitchTapped(_ sender: Any) {
        delegate?.updateHeroForm()
        
    }
    
    @IBAction func dismissButtonPressed(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
    }
    
    // MARK: - HELPER METHODS
    func updateViews(with hero: Hero){
        settingSwitch.isOn = hero.isHeroForm
    }
    
}
