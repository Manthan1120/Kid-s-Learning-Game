//
//  Shapes_Page.swift
//  Kid's Learning Game
//
//  Created by r86 on 28/06/23.
//

import UIKit
import AVFoundation

class Shapes_Page: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    
    let synth = AVSpeechSynthesizer()
    var arr = ["arrow","circle","cross","diamond","heart","hexagon","moon","octagon","oval","parallelogram","pentagon","star","trapezoid","triangle"]
    
    @IBOutlet weak var collectionView: UICollectionView!

    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arr.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell8 = collectionView.dequeueReusableCell(withReuseIdentifier: "cell8", for: indexPath) as! Shapes
            
            cell8.layer.cornerRadius = 20
            cell8.shapesImage.layer.cornerRadius = 20
            cell8.layer.shadowColor = UIColor.black.cgColor
            cell8.layer.shadowRadius = 4.0
            cell8.layer.shadowOpacity = 0.4
            cell8.layer.shadowOffset = CGSize(width: 4, height: 4)
            cell8.layer.masksToBounds = true
            cell8.shapesImage.image = UIImage(named: arr[indexPath.row])
            return cell8
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
