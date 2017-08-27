//
//  StartVC.swift
//  Swoosh Basketball
//
//  Created by Francis Jemuel Bergonia on 27/08/2017.
//  Copyright © 2017 Francis Jemuel Bergonia. All rights reserved.
//

import UIKit

class StartVC: UIViewController {

    
    @IBOutlet weak var swoosh: UIImageView!
    @IBOutlet weak var bgImg: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func getStartedTapped(_ sender: Any) {
        performSegue(withIdentifier: "leagueVCSegue", sender: self)
    }
    
    @IBAction func unwindFromSkillVC(unwindSegue: UIStoryboardSegue) {
        
    }

}
