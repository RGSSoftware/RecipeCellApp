//
//  RecipeCell.swift
//  RecipeAppCell
//
//  Created by recording on 1/6/19.
//  Copyright © 2019 Randel. All rights reserved.
//

import UIKit

class RecipeCell: UITableViewCell {

    @IBOutlet weak var _imageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var likeCounterLabel: UILabel!
    @IBOutlet weak var reviewCounterLabel: UILabel!
    @IBOutlet weak var descLabel: UILabel!
    
    
    @IBOutlet var starImageViews: [UIImageView]!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        initStarsSubviews()
    }
    
    override func prepareForReuse() {
        initStarsSubviews()
    }
    
    func initStarsSubviews() {
        for view in starImageViews {
            view.image = #imageLiteral(resourceName: "un_star")
        }
    }
    
    func setStarCount(_ count: Int) {
        if count < 1 {return}
        for index in 1...count {
            if let starImageView = viewWithTag(index) as? UIImageView {
                starImageView.image = #imageLiteral(resourceName: "fill_star")
            }
        }
    }

}
