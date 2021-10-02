//
//  ModelData.swift
//  forder
//
//  Created by Arthur Qi on 30/9/21.
//

import Foundation

import Combine

let allFoods: [Food] = load("menu.json")
final class ModelData: ObservableObject {
    @Published var food: [Food] = allFoods
    @Published var chosenCategroy: String = allFoods[0].category.rawValue
    var categories: [String: [Food]] {
        Dictionary(
            grouping: food,
            by: { $0.category.rawValue }
        )
    }
}

func load<T: Decodable>(_ filename: String) -> T {
    let data: Data

    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Couldn't find \(filename) in main bundle.")
    }

    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }

    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}
