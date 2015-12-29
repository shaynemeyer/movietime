//
//  Movie+CoreDataProperties.swift
//  MovieTime
//
//  Created by Shayne on 12/29/15.
//  Copyright © 2015 Maynesoft LLC. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension Movie {

    @NSManaged var title: String?
    @NSManaged var desc: String?
    @NSManaged var imdb: String?
    @NSManaged var image: NSData?
    @NSManaged var plot: String?

}
