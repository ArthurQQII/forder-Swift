//
//  FoodList.swift
//  forder
//
//  Created by Arthur Qi on 30/9/21.
//

import SwiftUI

struct FoodList: View {
    
    
    var AllFoods: [Food]
    var categroies: [String]
    
    var chosenFoods: [Food] {
        AllFoods.filter{ food in
            (categroies.contains(food.category.rawValue))
        }
    }
    var body: some View {
        List {
            ForEach(chosenFoods) { food in
                FoodListRow(food:food).listRowInsets(EdgeInsets())
            }
        }
        
    }
}

struct FoodList_Previews: PreviewProvider {
    static var previews: some View {
        FoodList(AllFoods: ModelData().food, categroies: [ModelData().chosenCategroy])
    }
}
