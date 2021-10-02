//
//  OrderPage.swift
//  forder
//
//  Created by Arthur Qi on 1/10/21.
//

import SwiftUI

struct OrderPage: View {
    @EnvironmentObject var modelData: ModelData

    @State private var categroyChosen: String = ModelData().chosenCategroy

    var body: some View {
        HStack {
            CategoryList(chosenCate: $categroyChosen, categories: modelData.categories.keys.sorted()).frame(width: UIScreen.main.bounds.width * 0.3).overlay(
                RoundedRectangle(cornerRadius: 8, style: .continuous)
                    .stroke(Color.gray, lineWidth: 1)
            )

            FoodList(AllFoods: modelData.food, categroies: [categroyChosen]).frame(width: UIScreen.main.bounds.width * 0.7)
        }
    }
}

struct OrderPage_Previews: PreviewProvider {
    static var previews: some View {
        OrderPage().environmentObject(ModelData())
    }
}
