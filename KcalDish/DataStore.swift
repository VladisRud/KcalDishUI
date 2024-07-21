//
//  DataStore.swift
//  KcalDish
//
//  Created by Vlad Rudenko on 06.07.2024.
//

import Foundation
import Combine

class DataStore: ObservableObject {
    
//    static let shared = DataStore()
    
    @Published var dishList: [Dish] = [
        Dish.init(
            id: Int.random(in: 1...10000),
            dishName: "Salad",
            kcal: 149,
            fats: 5,
            carbohydrates: 25,
            proteins: 1,
            ingredients: [
                Product(
                    id: Int.random(in: 1...10000),
                name: "Avocado",
                mass: "100",
                kcal: "89",
                fats: "24",
                carbohydrates: "2",
                proteins: "1"),
                Product(
                    id: Int.random(in: 1...10000),
                name: "Cucumber",
                mass: "80",
                kcal: "22",
                fats: "0.89",
                carbohydrates: "4",
                proteins: "1"),
                Product(
                    id: Int.random(in: 1...10000),
                name: "Tomato",
                mass: "90",
                kcal: "24",
                fats: "1.4",
                carbohydrates: "25",
                proteins: "0.9")
            ]
        ),
        Dish.init(
            id: Int.random(in: 1...10000),
            dishName: "Rice Shrimp",
            kcal: 156,
            fats: 10,
            carbohydrates: 65,
            proteins: 24,
            ingredients: [
                Product(
                    id: Int.random(in: 1...10000),
                name: "Shrimp",
                mass: "240",
                kcal: "78",
                fats: "9",
                carbohydrates: "2",
                proteins: "35"),
                Product(
                    id: Int.random(in: 1...10000),
                name: "Rice",
                mass: "200",
                kcal: "56",
                fats: "0.1",
                carbohydrates: "60",
                proteins: "8")
            ]
        ),
        Dish.init(
            id: Int.random(in: 1...10000),
            dishName: "Pancake",
            kcal: 222,
            fats: 10,
            carbohydrates: 39,
            proteins: 15,
            ingredients: [
                Product(
                    id: Int.random(in: 1...10000),
                name: "Eggs",
                mass: "150",
                kcal: "150",
                fats: "8",
                carbohydrates: "3",
                proteins: "15"),
                Product(
                    id: Int.random(in: 1...10000),
                name: "Milk",
                mass: "200",
                kcal: "50",
                fats: "5",
                carbohydrates: "4",
                proteins: "8"),
                Product(
                    id: Int.random(in: 1...10000),
                name: "Muka",
                mass: "130",
                kcal: "250",
                fats: "9",
                carbohydrates: "56",
                proteins: "8"),
            ]
        )
    ]
}
