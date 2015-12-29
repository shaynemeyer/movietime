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
    
    var movies: Movie?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let selectedMovie = movies {
            movieImg.image = selectedMovie.getMovieImg()
            movieTitle.text = selectedMovie.title
            movieDesc.text = selectedMovie.desc
            movieURL.text = selectedMovie.imdb
            moviePlot.text = selectedMovie.plot
            
            movieImg.layer.cornerRadius = 4.0
            movieImg.clipsToBounds = true
        }
        
    }

    @IBAction func backBtnPressed(sender: AnyObject) {
        self.navigationController?.popViewControllerAnimated(true)
    }
}
