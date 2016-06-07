//
//  RecipeCell.swift
//  Forage
//
//  Created by Lusenii Kromah on 6/4/16.
//  Copyright © 2016 Derivative. All rights reserved.
//

import UIKit

class RecipeCell: UITableViewCell {
   
    var recipeItem:RecipeItem?
    
    
    @IBOutlet weak var foodImage: UIImageView!
    @IBOutlet weak var recipeName: UILabel!

    @IBOutlet weak var ingredients: UILabel!

    @IBOutlet weak var time: UILabel!
    
    @IBOutlet weak var calories: UILabel!
    
    
    func setOpacityOfFoodImage()-> Void{
        foodImage.alpha = 0.3
    }
    var item:RecipeItem!{
        didSet{
            recipeName.text! = item.getRecipeName()
            ingredients.text! = String(item.getNumberOfIng())
            time.text! = item.getTime()
            calories.text! = item.getNumCalories()
        }
    }

}
