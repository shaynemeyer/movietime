//
//  MovieDetailVC.swift
//  MovieTime
//
//  Created by Shayne on 12/29/15.
//  Copyright © 2015 Maynesoft LLC. All rights reserved.
//

import UIKit

class MovieDetailVC: UIViewController {

    @IBOutlet weak var movieImg: UIImageView!
    @IBOutlet weak var movieTitle: UILabel!
    @IBOutlet weak var movieDesc: UILabel!
    @IBOutlet weak var movieURL: UILabel!
    @IBOutlet weak var moviePlot: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    @IBAction func backBtnPressed(sender: AnyObject) {
        self.navigationController?.popViewControllerAnimated(true)
    }
}
