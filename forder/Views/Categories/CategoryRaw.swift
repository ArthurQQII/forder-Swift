//
//  CategoryRaw.swift
//  forder
//
//  Created by Arthur Qi on 2/10/21.
//

import SwiftUI

struct CategoryRaw: View {
    var categroyItem: String
    
    var body: some View {
        HStack {
            Text(categroyItem)
                .font(.largeTitle)
                .padding(.leading, 10.0)
            Spacer()
            Image(systemName: "chevron.right")
                .padding(.trailing)
        }
    }
}

struct CategoryRaw_Previews: PreviewProvider {
    static var previews: some View {
        CategoryRaw(categroyItem: ModelData().food[0].category.rawValue).previewLayout(.fixed(width: 300, height: 70))
    }
}
