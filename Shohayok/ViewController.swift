//
//  ViewController.swift
//  Shohayok
//
//  Created by Lab on 2/26/20.
//  Copyright © 2020 Arifeen Mahmud. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
   
    
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
    
    
    // MARK: Collection view
    @IBOutlet weak var myCollectionView: UICollectionView!
    
//    let width = (view.frame.size.width - 20) / 2\
//    let layout = collectionView(<#T##self: ViewController##ViewController#>)
    
//    let img = ["ec","","","","",""]
//    
//    let images:[UIImage] = [
//    UIImage(named: "ec")!,
//    UIImage(named: "")!,
//    UIImage(named: "")!,
//    UIImage(named: "")!,
//    UIImage(named: "")!,
//    UIImage(named: "")!
//    
//    ]
//    
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
           return 2
       }
       func numberOfSections(in collectionView: UICollectionView) -> Int {
           return 2
       }
       
       func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
           let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "myCell", for: indexPath)
           return cell
       }
    
    
}


