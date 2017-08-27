//
//  LeagueVC.swift
//  Swoosh Basketball
//
//  Created by Francis Jemuel Bergonia on 27/08/2017.
//  Copyright © 2017 Francis Jemuel Bergonia. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {

    var player: Player!
    
    
    @IBOutlet weak var nextBtn: BorderButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        player = Player()
    }


    @IBAction func onNextTapped(_ sender: Any) {
        performSegue(withIdentifier: "skillVCSegue", sender: self)
    }

    @IBAction func onMensTapped(_ sender: Any) {
        selectLegue(legueType: "mens")
        
    }

    
    @IBAction func onWomensTapped(_ sender: Any) {
        selectLegue(legueType: "womens")
    }
    
    
    @IBAction func onCoEdTapped(_ sender: Any) {
        selectLegue(legueType: "coed")
    }
    
    func selectLegue(legueType: String) {
        player.desiredLeague = legueType
        nextBtn.isEnabled = true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillVC = segue.destination as? SkillVC {
            skillVC.player = player
        }
    }
    
}
