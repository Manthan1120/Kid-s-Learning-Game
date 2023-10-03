//
//  Colour_Mixing_Page.swift
//  Kid's Learning Game
//
//  Created by r86 on 23/06/23.
//

import UIKit
import AVFoundation

class Colour_Mixing_Page: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    
    let synth = AVSpeechSynthesizer()
    var arr = ["blue  + yellow = green","white + black = grey","white + red = pink","red + blue = purple","red + yellow = orange","red + blue + yellow = brown"]
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arr.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell4 = collectionView.dequeueReusableCell(withReuseIdentifier: "cell4", for: indexPath) as! colourMixing
        cell4.layer.cornerRadius = 20
        cell4.layer.shadowColor = UIColor.black.cgColor
        cell4.layer.shadowRadius = 4.0
        cell4.layer.shadowOpacity = 0.4
        cell4.layer.shadowOffset = CGSize(width: 4, height: 4)
        cell4.layer.masksToBounds = true
        cell4.colourMixingImages.image = UIImage(named: arr[indexPath.row])
        return cell4
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 353, height: 165)
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        var myUtterrance = AVSpeechUtterance(string: arr[indexPath.row])
        synth.speak(myUtterrance)
        myUtterrance.rate = 0.5
    }
    @IBAction func backButtonAction(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
}
