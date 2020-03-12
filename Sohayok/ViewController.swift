//
//  ViewController.swift
//  Sohayok
//
//  Created by Sabbir Hossain on 3/12/20.
//  Copyright © 2020 Sabbir Hossain. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
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
}
