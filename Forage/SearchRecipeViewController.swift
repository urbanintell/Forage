//
//  SearchRecipeViewController.swift
//  Forage
//
//  Created by Lusenii Kromah on 6/4/16.
//  Copyright © 2016 Derivative. All rights reserved.
//

import UIKit

class SearchRecipeViewController: UITableViewController,UISearchBarDelegate {

    @IBOutlet weak var mySearchBar: UISearchBar!
    let recipeData = [
        RecipeItem(recipeName:"Chicken", numberOfIngredients: 5, time: "2 Hours",numCalories: "1200"),
        RecipeItem(recipeName:"Chicken", numberOfIngredients: 5, time: "2 Hours",numCalories: "1200"),
        RecipeItem(recipeName:"Chicken", numberOfIngredients: 5, time: "2 Hours",numCalories: "1200")
    ]
    
    override func viewDidLoad() {
        mySearchBar.delegate = self
    }
    
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return recipeData.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath)
        -> UITableViewCell {
            let cell = tableView.dequeueReusableCellWithIdentifier("RecipeCell",forIndexPath: indexPath) as! RecipeCell
            
            let recipe = recipeData[indexPath.row] as RecipeItem
            cell.recipeName.text = recipe.getRecipeName()
            cell.time.text = recipe.getTime()
            cell.ingredients.text = String(recipe.getNumberOfIng())
            cell.calories.text = recipe.getNumCalories()
            
            cell.setOpacityOfFoodImage()
            
            return cell
    
    }
    
    func searchBarSearchButtonClicked(searchBar: UISearchBar) {
        let text = searchBar.text
  
        if text != "" {
            print(text!)
        }
    }
}
