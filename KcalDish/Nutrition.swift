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

struct Nutrition:Identifiable {
    let id: Int
    var dishName: String
    var kcal: Double
    var fats: Double
    var carbohydrates: Double
    var proteins: Double
    var ingredients: [Product]
}

struct Product: Identifiable {
    let id: Int
    var name: String
    var mass: Double
    var kcal: Double
    var fats: Double
    var carbohydrates: Double
    var proteins: Double
}


