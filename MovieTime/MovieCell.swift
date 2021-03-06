//
//  MovieCell.swift
//  MovieTime
//
//  Created by Shayne on 12/29/15.
//  Copyright © 2015 Maynesoft LLC. All rights reserved.
//

import UIKit

class MovieCell: UITableViewCell {

    @IBOutlet weak var movieImg: UIImageView!
    @IBOutlet weak var movieTitle: UILabel!
    @IBOutlet weak var movieDesc: UILabel!
    @IBOutlet weak var movieImdb: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    func configureCell(movie: Movie) {
        movieImg.image = movie.getMovieImg()
        movieTitle.text = movie.title
        movieDesc.text = movie.desc
        movieImdb.text = movie.imdb
        
        movieImg.layer.cornerRadius = 4.0
        movieImg.clipsToBounds = true
    }

}
