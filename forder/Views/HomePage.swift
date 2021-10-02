//
//  OrderPage.swift
//  forder
//
//  Created by Arthur Qi on 1/10/21.
//

import SwiftUI

struct HomePage: View {
    var body: some View {
        VStack {
            Button(action: /*@START_MENU_TOKEN@*/ {}/*@END_MENU_TOKEN@*/) {
                Text("Dine In")
                    .font(.system(size: 57))
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .frame(width: 280, height: /*@START_MENU_TOKEN@*/105.0/*@END_MENU_TOKEN@*/)

            }.frame(width: /*@START_MENU_TOKEN@*/300.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/150.0/*@END_MENU_TOKEN@*/).foregroundColor(.white)
                .padding(15)
                .background(RoundedRectangle(cornerRadius: 5).fill(.blue))
                .compositingGroup()
                .shadow(color: .black, radius: 3)
                .opacity(1.0)
                .scaleEffect(1.0)

            Spacer()

            Button(action: /*@START_MENU_TOKEN@*/ {}/*@END_MENU_TOKEN@*/) {
                Text("Take Away")
                    .font(.system(size: 57))
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .frame(width: 280, height: /*@START_MENU_TOKEN@*/105.0/*@END_MENU_TOKEN@*/)

            }.frame(width: /*@START_MENU_TOKEN@*/300.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/150.0/*@END_MENU_TOKEN@*/).foregroundColor(.white)
                .padding(15)
                .background(RoundedRectangle(cornerRadius: 5).fill(.blue))
                .compositingGroup()
                .shadow(color: .black, radius: 3)
                .opacity(1.0)
                .scaleEffect(1.0)
        }.padding(.top, -100.0).frame(width: 400, height: 400, alignment: .center)
    }
}

struct HomePage_Previews: PreviewProvider {
    static var previews: some View {
        HomePage()
    }
}
