//
//  PhotoViewCell.swift
//  Virtual Tourist
//
//  Created by Yasminْ 3bdul3ziz on 04/02/2019.
//  Copyright © 2019 Yasmin Abdulaziz. All rights reserved.
//

import UIKit

class PhotoViewCell: UICollectionViewCell {
    static let identifier = "PhotoViewCell"
    
    var imageUrl: String = ""
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
}
