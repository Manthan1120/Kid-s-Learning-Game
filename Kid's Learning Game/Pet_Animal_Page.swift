//
//  Pet_Animal_Page.swift
//  Kid's Learning Game
//
//  Created by r86 on 28/06/23.
//

import UIKit
import AVFoundation

class Pet_Animal_Page: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
 
    let synth = AVSpeechSynthesizer()
    var arr = ["camel","cat","cow","dog","donkey","duck","goat","goose","hen","horse","monkey","pig","rabbit","rooster","sheep","turkey"]
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arr.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell6 = collectionView.dequeueReusableCell(withReuseIdentifier: "cell6", for: indexPath) as! Pet_Animal
        cell6.layer.cornerRadius = 20
        cell6.layer.shadowColor = UIColor.black.cgColor
        cell6.layer.shadowRadius = 4.0
        cell6.layer.shadowOpacity = 0.4
        cell6.layer.shadowOffset = CGSize(width: 4, height: 4)
        cell6.layer.masksToBounds = true
        cell6.petAnimalImage.image = UIImage(named: arr[indexPath.row])
        return cell6
    }
    
    @IBAction func backButtonAction(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        var myUtterrance = AVSpeechUtterance(string: arr[indexPath.row])
        synth.speak(myUtterrance)
        myUtterrance.rate = 0.5
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 165, height: 165)
    }
}

