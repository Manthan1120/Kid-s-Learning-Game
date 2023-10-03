//
//  Birds_Page.swift
//  Kid's Learning Game
//
//  Created by r86 on 28/06/23.
//

import UIKit
import AVFoundation

class Birds_Page: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {

    let synth = AVSpeechSynthesizer()
    var arr = ["crow","dov","ducck","eagle","henn","kingfisher","owl","parrot","peacock","pigeon","sparrow"]
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arr.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell{
    let cell7 = collectionView.dequeueReusableCell(withReuseIdentifier: "cell7", for: indexPath) as! Birds
        
        cell7.layer.cornerRadius = 20
        cell7.birdsImage.layer.cornerRadius = 20
        cell7.layer.shadowColor = UIColor.black.cgColor
        cell7.layer.shadowRadius = 4.0
        cell7.layer.shadowOpacity = 0.4
        cell7.layer.shadowOffset = CGSize(width: 4, height: 4)
        cell7.layer.masksToBounds = true
        cell7.birdsImage.image = UIImage(named: arr[indexPath.row])
        return cell7
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
