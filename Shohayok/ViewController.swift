//
//  ViewController.swift
//  Shohayok
//
//  Created by Arifeen Mahmud on 2/26/20.
//  Copyright © 2020 Arifeen Mahmud. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: Slider
    @IBOutlet weak var SlideShowViewer: UIImageView!
     var imageNames = ["1","2","3","4","5"]//List of image names
    override func viewDidLoad() {
        super.viewDidLoad()
        let timer = Timer.scheduledTimer(withTimeInterval: 1.5, repeats: true) { timer in
        self.SlideShowViewer.image = UIImage(named: self.imageNames.randomElement()!) //Slideshow logic
            
            
            
    }
        timer.fire() //Starts timer
            //timer.invalidate() //Stops timer
        }
    
    // MARK: Collection View Image
     @IBOutlet weak var myCollectionView: UICollectionView!
    
    let Img = ["ec","em","fn","id"]
    
    let mainImg:[UIImage] = [
    
    UIImage(named: "ec")!,
     UIImage(named: "em")!,
      UIImage(named: "fn")!,
       UIImage(named: "id")!
    ]
    
    }


// MARK: Collection view
extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//        let width  = (view.frame.size.width - 20) / 2
//        return CGSize(width: width, height: width)
//    }
        
        func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            return Img.count
           }
           func numberOfSections(in collectionView: UICollectionView) -> Int {
               return 2
           }
           
           func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
               let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "myCell", for: indexPath) as! CollectionViewCell
            cell.mainText.text = Img[indexPath.item]
            cell.mainImageView.image = mainImg[indexPath.item]
            return cell
           }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let text = mainImg[indexPath.row]
        print("Selected \(text)")
        
    }
    
        }


