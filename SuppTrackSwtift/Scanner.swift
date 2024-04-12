//
//  Scanner.swift
//  SuppTrackSwtift
//
//  Created by Taylor Lea on 2/22/24.
//

import SwiftUI
import VisionKit
import UIKit
import SwiftUI
import CarBode
import AVFoundation //import to access barcode types you want to scan

struct Scanner: View {
    @State var isShowingScanner = true
    @State private var showMenu = false
    @State private var ingredients: [ingredient_list] = []
    @State var apiView = APIView()
    @State var textScanned = false
    @State private var ingredientsstring: [String] = []
    
    var body: some View {
        ZStack {
            VStack{
            CBScanner(
             supportBarcode: .constant([.qr, .code128]), //Set type of barcode you want to scan
             scanInterval: .constant(5.0) //Event will trigger every 5 seconds
             ){
             //When the scanner found a barcode
             print("BarCodeType =",$0.type.rawValue, "Value =",$0.value)
            
                 Task{
                     do{
                         let result =  try await apiView.searchIngredients("052000135152")
                         textScanned = true
                         
                         ingredientsstring = result.map { $0.ingredients }
                         
                     }catch{
                         print(error)
                     }
                    
                 }
             }
                if(textScanned == true){     
                    List(ingredientsstring, id: \.self) { ingredient in
                                  Text(ingredient)
                              }
                }
                
            }
        }
    }
}


#Preview {
    Scanner()
}
