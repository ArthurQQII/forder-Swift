//
//  CategoryList.swift
//  forder
//
//  Created by Arthur Qi on 2/10/21.
//

import SwiftUI

struct CategoryList: View {
    @Binding var chosenCate: String
    var categories: [String]
    var body: some View {
        List {
            ForEach(categories, id: \.self) { category in
                Button(action: {
                    chosenCate = category
                }) {
                    CategoryRaw(categroyItem: category)
                }
            }
        }
    }
}

struct CategoryList_Previews: PreviewProvider {
    static var previews: some View {
        CategoryList(chosenCate: .constant(ModelData().chosenCategroy), categories: [ModelData().chosenCategroy])
    }
}
