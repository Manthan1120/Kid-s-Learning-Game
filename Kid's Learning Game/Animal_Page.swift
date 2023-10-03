//
//  Animal_Page.swift
//  Kid's Learning Game
//
//  Created by r86 on 27/06/23.
//

import UIKit
import AVFoundation

class Animal_Page: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    
    var arr = ["Antelope","Bear","Elephant","Fox","Graffe","Jagvar","Kangaroo","Leopard","Lion","Zebra"]
    
    let synth = AVSpeechSynthesizer()
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arr.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell5 = collectionView.dequeueReusableCell(withReuseIdentifier: "cell5", for: indexPath) as! Animal
        cell5.layer.cornerRadius = 20
        cell5.layer.shadowColor = UIColor.black.cgColor
        cell5.layer.shadowRadius = 4.0
        cell5.layer.shadowOpacity = 0.4
        cell5.layer.shadowOffset = CGSize(width: 4, height: 4)
        cell5.layer.masksToBounds = true
        cell5.imageFroAnimal.image = UIImage(named: arr[indexPath.row])
        return cell5
    }

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        var myUtterrance = AVSpeechUtterance(string: arr[indexPath.row])
        synth.speak(myUtterrance)
        myUtterrance.rate = 0.5
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 165, height: 165)
    }
    
    @IBAction func backButtonAction(_ sender: Any) {
        
        navigationController?.popViewController(animated: true)
    }
}
