//
//  ContentView.swift
//  forder
//
//  Created by Arthur Qi on 30/9/21.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var modelData: ModelData
    var body: some View {
        OrderPage().environmentObject(ModelData())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        OrderPage().environmentObject(ModelData())
    }
}
