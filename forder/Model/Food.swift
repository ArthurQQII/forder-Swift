//
//  Food.swift
//  forder
//
//  Created by Arthur Qi on 30/9/21.
//

import Foundation
import SwiftUI

import CoreLocation

struct Food: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var price: Float

    var category: Category
    enum Category: String, CaseIterable, Codable {
        case Beef
        case Chicken
        case Pork
    }

    private var imageName: String
    var image: Image {
        Image(imageName)
    }
}
