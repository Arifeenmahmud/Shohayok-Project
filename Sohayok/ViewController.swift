//
//  ViewController.swift
//  Sohayok
//
//  Created by Sabbir Hossain on 3/12/20.
//  Copyright © 2020 Sabbir Hossain. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: Slider
    @IBOutlet weak var slider: UIImageView!
    
    var imageNames = ["1","2","3","4","5"]//List of image names
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let timer = Timer.scheduledTimer(withTimeInterval: 1.5, repeats: true) { timer in
        self.slider.image = UIImage(named: self.imageNames.randomElement()!) //Slideshow logic
    }

    timer.fire() //Starts timer
               //timer.invalidate() //Stops timer

     }
    // MARK: Collection View Image
    @IBOutlet weak var myCollectionView: UICollectionView!
    let Imgname = ["ec","em","fn","id"]
    
    let mainImg:[UIImage] = [
    
    UIImage(named: "ec")!,
     UIImage(named: "em")!,
      UIImage(named: "fn")!,
       UIImage(named: "id")!
    ]
}

// MARK: Collection View
extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
    let width  = (view.frame.size.width - 40) / 2
    return CGSize(width: width, height: width)
}
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return Imgname.count
       }
       func numberOfSections(in collectionView: UICollectionView) -> Int {
           return 1
       }
       
       func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
           let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "myCell", for: indexPath) as! CollectionViewCell
        cell.mainText.text = Imgname[indexPath.item]
        cell.mainImageView.image = mainImg[indexPath.item]
        return cell
       }
func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    let text = mainImg[indexPath.row]
    print("Selected \(text)")
    
}

    }
