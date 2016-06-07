//
//  RecipeItem.swift
//  Forage
//
//  Created by Lusenii Kromah on 6/4/16.
//  Copyright © 2016 Derivative. All rights reserved.
//

import Foundation


class RecipeItem{

    var recipeName: String?
    var numberOfIngredients: Int?
    var time:String?
    var numCalories:String?
    
    init(recipeName:String?, numberOfIngredients: Int, time:String? , numCalories:String? ){
        self.recipeName = recipeName
        self.numberOfIngredients = numberOfIngredients
        self.time = time
        self.numCalories = numCalories
    
    }
    
    func getRecipeName() -> String{
        return self.recipeName!
    }
    func getNumberOfIng() -> Int{
        return self.numberOfIngredients!
    }
    
    func getTime() -> String {
        return self.time!
    }
    
    func getNumCalories() -> String{
        return self.numCalories!
    }
    
}