//
//  ViewController.swift
//  Shohayok
//
//  Created by Lab on 2/26/20.
//  Copyright © 2020 Arifeen Mahmud. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 8
    }
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "myCell", for: indexPath)
        return cell
    }
    
    @IBOutlet weak var SlideShowViewer: UIImageView!
     var imageNames = ["1","2","3","4","5","6"]//List of image names
    override func viewDidLoad() {
        super.viewDidLoad()
        let timer = Timer.scheduledTimer(withTimeInterval: 1.5, repeats: true) { timer in
        self.SlideShowViewer.image = UIImage(named: self.imageNames.randomElement()!) //Slideshow logic
    }

    
        timer.fire() //Starts timer
            //timer.invalidate() //Stops timer
        }
    
    @IBOutlet weak var myCollectionView: UICollectionView!
    
    
}


