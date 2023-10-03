//
//  Choice_Page.swift
//  Kid's Learning Game
//
//  Created by r86 on 22/06/23.
//

import UIKit

class Choice_Page: UIViewController {

    @IBOutlet weak var animalButton: UIButton!
    @IBOutlet weak var colourMixingButton: UIButton!
    @IBOutlet weak var colourButon: UIButton!
    @IBOutlet weak var alphabetsButon: UIButton!
    @IBOutlet weak var numberButon: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colourButon.layer.cornerRadius = 18
        colourButon.layer.shadowColor = UIColor.black.cgColor
        colourButon.layer.shadowRadius = 4.0
        colourButon.layer.shadowOpacity = 0.4
        colourButon.layer.shadowOffset = CGSize(width: 4, height: 4)
        colourButon.layer.masksToBounds = false
        
        alphabetsButon.layer.cornerRadius = 18
        alphabetsButon.layer.shadowColor = UIColor.black.cgColor
        alphabetsButon.layer.shadowRadius = 4.0
        alphabetsButon.layer.shadowOpacity = 0.4
        alphabetsButon.layer.shadowOffset = CGSize(width: 4, height: 4)
        alphabetsButon.layer.masksToBounds = false
        
        numberButon.layer.cornerRadius = 18
        numberButon.layer.shadowColor = UIColor.black.cgColor
        numberButon.layer.shadowRadius = 4.0
        numberButon.layer.shadowOpacity = 0.4
        numberButon.layer.shadowOffset = CGSize(width: 4, height: 4)
        numberButon.layer.masksToBounds = false
        
        colourMixingButton.layer.cornerRadius = 18
        colourMixingButton.layer.shadowColor = UIColor.black.cgColor
        colourMixingButton.layer.shadowRadius = 4.0
        colourMixingButton.layer.shadowOpacity = 0.4
        colourMixingButton.layer.shadowOffset = CGSize(width: 4, height: 4)
        colourMixingButton.layer.masksToBounds = false
    }
    
    @IBAction func numberButtonAction(_ sender: Any) {
        let navigation = storyboard?.instantiateViewController(withIdentifier: "Number_Page") as! Number_Page
        navigationController?.pushViewController(navigation, animated: true)
    }
    
    @IBAction func alphabtesButtonAction(_ sender: Any) {
        let navigation = storyboard?.instantiateViewController(withIdentifier: "Alphabets_Page") as! Alphabets_Page
        navigationController?.pushViewController(navigation, animated: true)
    }
    
    @IBAction func colourButtonAction(_ sender: Any) {
        let navigation = storyboard?.instantiateViewController(withIdentifier: "Colour_Page") as! Colour_Page
        navigationController?.pushViewController(navigation, animated: true)
    }
    
    @IBAction func animalButtonAction(_ sender: Any) {
        let navigation = storyboard?.instantiateViewController(withIdentifier: "Animal_Page") as! Animal_Page
        navigationController?.pushViewController(navigation, animated: true)
    }
    
    @IBAction func nextButtonAction(_ sender: Any) {
        let navigation = storyboard?.instantiateViewController(withIdentifier: "Choice_Page_2") as! Choice_Page_2
        navigationController?.pushViewController(navigation, animated: true)
        
    }
    @IBAction func coloueMIxingButtonAction(_ sender: Any) {
        let navigation = storyboard?.instantiateViewController(withIdentifier: "Colour_Mixing_Page") as! Colour_Mixing_Page
        navigationController?.pushViewController(navigation, animated: true)
    }
}
