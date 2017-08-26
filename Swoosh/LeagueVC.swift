//
//  LeagueVC.swift
//  Swoosh
//
//  Created by Ariven on 26/08/17.
//  Copyright © 2017 Ariven. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {

    var player: Player!
    
    @IBOutlet weak var btnNextOutlet: BorderButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        player = Player()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btnNext(_ sender: Any) {
        
        performSegue(withIdentifier: "LeagueVCIdentifier", sender: self)
    }
    
    @IBAction func btnMens(_ sender: Any) {
        
        selectLeague(myLeague: "mens")
    }
    
    @IBAction func btnWomens(_ sender: Any) {
        
        selectLeague(myLeague: "womens")
    }
    
    @IBAction func btnCoed(_ sender: Any) {
        
        selectLeague(myLeague: "coed")
    }
    
    func selectLeague(myLeague: String){
    
        player.desiredLeague = myLeague
        btnNextOutlet.isEnabled = true
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let skillVC = segue.destination as? SkillVC{
        
            skillVC.player = player
        }
    }

}




















