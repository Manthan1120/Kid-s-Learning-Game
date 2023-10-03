//
//  Choice_Page_2.swift
//  Kid's Learning Game
//
//  Created by r86 on 27/06/23.


import UIKit

class Choice_Page_2: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func petAnimalButtonAction(_ sender: Any) {
        let navigation = storyboard?.instantiateViewController(withIdentifier: "Pet_Animal_Page") as! Pet_Animal_Page
        navigationController?.pushViewController(navigation, animated: true)
    }
    
    @IBAction func birdsButtonAction(_ sender: Any) {
        let navigation = storyboard?.instantiateViewController(withIdentifier: "Birds_Page") as! Birds_Page
        navigationController?.pushViewController(navigation, animated: true)
    }
    
    @IBAction func shapesButtonAction(_ sender: Any) {
        let navigation = storyboard?.instantiateViewController(withIdentifier: "Shapes_Page") as! Shapes_Page
        navigationController?.pushViewController(navigation, animated: true)
    }
    
    @IBAction func backButtonAction(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
}
