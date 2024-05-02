//
//  APIView.swift
//  SuppTrackSwtift
//
//  Created by Taylor Lea on 4/17/24.
//

import UIKit
import SwiftUI

//errors
enum NetworkError: Error{
    case badURL
    case invalidResponse
    case decodingError
}

struct APIView{
    @State var ingredientStrings: [String] = []
    
    //calls api to search ingredients
    func searchIngredients(_ upc:String) async throws -> [ingredient_list]{
        guard let url = URL(string: "https://trackapi.nutritionix.com/v2/search/item?upc=\(upc)") else {
                throw NetworkError.badURL
        }
        //create request
        var request = URLRequest(url: url)
        
        //add headers
        request.addValue("4811062a", forHTTPHeaderField: "x-app-id")
        request.addValue("1367d1783cda63d26c7f48d3dd46f7d7", forHTTPHeaderField: "x-app-key")
        
        let(data, response) = try await URLSession.shared.data(for: request)
        
        //check response
        guard let httpResponse = response as? HTTPURLResponse,
              httpResponse.statusCode == 200 else{
            print(response)
            throw NetworkError.invalidResponse
        }
        
        guard let ingredientResponse = try? JSONDecoder().decode(IngredientResponse.self, from: data) else{
            throw NetworkError.decodingError
        }
        
        print(ingredientResponse)
        ingredientStrings = ingredientResponse.foods.map { $0.ingredients }
        return ingredientResponse.foods
            
        
    }
    
    
}

