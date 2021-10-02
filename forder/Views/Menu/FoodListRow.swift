//
//  FoodListitem.swift
//  forder
//
//  Created by Arthur Qi on 30/9/21.
//

import SwiftUI

struct FoodListRow: View {
    var food: Food
    var body: some View {
        HStack{
            food.image.resizable().frame(width: 50, height: 50)
            
            Text(food.name)
            Spacer()
        }
    }
}

struct FoodListRow_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            FoodListRow(food: ModelData().food[1])
        }.previewLayout(.fixed(width: 300, height: 70))
        
    }
}
