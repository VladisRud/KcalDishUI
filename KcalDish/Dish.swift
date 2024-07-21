//
//  Nutrition.swift
//  KcalDish
//
//  Created by Vlad Rudenko on 06.07.2024.
//

import Foundation

enum KFCP {
    case Kcal
    case Fats
    case Carbohydrates
    case Proteins
    
    var textKFCP: String {
        switch self {
        case .Kcal:
            "Kcal"
        case .Fats:
            "Fats"
        case .Carbohydrates:
            "Carbohydrates"
        case .Proteins:
            "Proteins"
        }
    }
}

struct Dish: Identifiable, Codable {
    var id: Int = Int.random(in: 0...10000)
    var dishName: String = ""
    var kcal: Double = 0.0
    var fats: Double = 0.0
    var carbohydrates: Double = 0.0
    var proteins: Double = 0.0
    var ingredients: [Product] = []
    
}

struct Product: Identifiable, Codable {
    var id: Int = Int.random(in: 0...10000)
    var name: String = ""
    var mass: String = ""
    var kcal: String = ""
    var fats: String = ""
    var carbohydrates: String = ""
    var proteins: String = ""
    
}


