//
//  Supplement.swift
//  SuppTrackSwtift
//
//  Created by Taylor Lea on 4/11/24.
//

import Foundation
//tracks ingredients for a product 
struct IngredientResponse: Decodable{
    let foods: [ingredient_list]
}

struct ingredient_list: Decodable, Identifiable{
    let id: String
    let ingredients: String
    
    private enum CodingKeys: String, CodingKey{
        case ingredients = "nf_ingredient_statement"
        case id = "food_name"
    }
}
