//
//  Colour_Page.swift
//  Kid's Learning Game
//
//  Created by r86 on 22/06/23.
//

import UIKit
import AVFoundation

class Colour_Page: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    
    let synth = AVSpeechSynthesizer()
    var arr = ["white","blue","green","red","yellow","pink","orange","purple","black","grey","brown"]
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arr.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell3 = collectionView.dequeueReusableCell(withReuseIdentifier: "cell3", for: indexPath) as! Colour
        cell3.layer.cornerRadius = 20
        cell3.layer.cornerRadius = 20
        cell3.layer.shadowColor = UIColor.black.cgColor
        cell3.layer.shadowRadius = 4.0
        cell3.layer.shadowOpacity = 0.4
        cell3.layer.shadowOffset = CGSize(width: 4, height: 4)
        cell3.layer.masksToBounds = true
        cell3.lableForColour.text = arr[indexPath.row]
        cell3.coloursImage.image = UIImage(named: "\(arr[indexPath.row])")
        return cell3
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 165, height: 165)
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
