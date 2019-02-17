//
//  Photo+CoreDataProperties.swift
//  Virtual Tourist
//
//  Created by Yasminْ 3bdul3ziz on 05/02/2019.
//  Copyright © 2019 Yasmin Abdulaziz. All rights reserved.
//

import Foundation
import CoreData


extension Photo {
    
    @nonobjc public class func fetchRequest() -> NSFetchRequest<Photo> {
        return NSFetchRequest<Photo>(entityName: "Photo")
    }
    
    @NSManaged public var image: NSData?
    @NSManaged public var title: String?
    @NSManaged public var imageUrl: String?
    @NSManaged public var pin: Pin?
    
}
