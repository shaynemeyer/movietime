//
//  AddMovieVC.swift
//  MovieTime
//
//  Created by Shayne on 12/29/15.
//  Copyright © 2015 Maynesoft LLC. All rights reserved.
//

import UIKit
import CoreData

class AddMovieVC: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var movieTitle: UITextField!
    @IBOutlet weak var movieDesc: UITextField!
    @IBOutlet weak var movieURL: UITextField!
    @IBOutlet weak var moviePlot: UITextField!
    @IBOutlet weak var movieImg: UIImageView!
    
    var imagePicker: UIImagePickerController!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        imagePicker = UIImagePickerController()
        imagePicker.delegate = self
        movieImg.layer.cornerRadius = 4.0
        movieImg.clipsToBounds = true
    }
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingImage image: UIImage, editingInfo: [String : AnyObject]?) {
        imagePicker.dismissViewControllerAnimated(true, completion: nil)
        movieImg.image = image
    }

    @IBAction func addMovieBtnPressed(sender: AnyObject) {
        if let title = movieTitle.text where title != "" {
            let app = UIApplication.sharedApplication().delegate as! AppDelegate
            let context = app.managedObjectContext
            let entity = NSEntityDescription.entityForName("Movie", inManagedObjectContext: context)!
            
            let movie = Movie(entity: entity, insertIntoManagedObjectContext: context)
            movie.title = movieTitle.text
            movie.desc = movieDesc.text
            movie.imdb = movieURL.text
            movie.plot = moviePlot.text
            movie.setMovieImage(movieImg.image!)
            
            context.insertObject(movie)
            
            do {
                try context.save()
            } catch {
                print("Could not save movie")
            }
            
            self.navigationController?.popViewControllerAnimated(true)
        }
    }
    
    @IBAction func addCoverBtnPressed(sender: AnyObject) {
        presentViewController(imagePicker, animated: true, completion: nil)
    }

    @IBAction func backBtnPressed(sender: AnyObject) {
        self.navigationController?.popViewControllerAnimated(true)
    }
}
