//
//  DetailViewController.swift
//  collectionViewSegue
//
//  Created by Arifeen Mahmud on 3/15/20.
//  Copyright © 2020 Arifeen Mahmud. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    var selection: String!
    @IBOutlet private weak var detailsLable: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        detailsLable.text = selection
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
