//
//  Alphabets_Page.swift
//  Kid's Learning Game
//
//  Created by r86 on 21/06/23.
//

import UIKit
import AVFoundation

class Alphabets_Page: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    
    @IBOutlet weak var collectionView: UICollectionView!
    let synth = AVSpeechSynthesizer()
    var arr = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]

    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arr.count
    }
    
    @IBAction func backButtonAction(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell2 = collectionView.dequeueReusableCell(withReuseIdentifier: "cell2", for: indexPath) as! Alphabets
     
        cell2.layer.cornerRadius = 20
        cell2.layer.shadowColor = UIColor.black.cgColor
        cell2.layer.shadowRadius = 4.0
        cell2.layer.shadowOpacity = 0.4
        cell2.layer.shadowOffset = CGSize(width: 4, height: 4)
        cell2.layer.masksToBounds = true
        cell2.alphabetsImage.image = UIImage(named: arr[indexPath.row])
        return cell2
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
