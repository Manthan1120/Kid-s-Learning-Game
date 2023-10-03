//
//  LaunchScreen.swift
//  Kid's Learning Game
//
//  Created by r86 on 29/06/23.
//

import UIKit

class LaunchScreen: UIViewController {
    
    var time = Timer()
    
    @IBOutlet weak var progresBar: UIProgressView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    func setUp() {
        var randomTime : Float = 0.0
        self.progresBar.progress = randomTime
        time = Timer.scheduledTimer(withTimeInterval: 0.05, repeats: true, block: { (_) in
            randomTime += 0.05
            self.progresBar.progress = randomTime
            if self.progresBar.progress == 1.0{
                self.time.invalidate()
                self.naviagtion()
            }
        })
    }
    
    func naviagtion() {
        let navigation = storyboard?.instantiateViewController(withIdentifier: "Choice_Page") as! Choice_Page
        
        navigationController?.pushViewController(navigation, animated: true)
    }

    @IBAction func startButtonAction(_ sender: Any) {
        setUp()
    }
}
