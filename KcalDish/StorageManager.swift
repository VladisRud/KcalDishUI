//
//  StorageManager.swift
//  KcalDish
//
//  Created by Vlad Rudenko on 09.07.2024.
//

import SwiftUI

final class StorageManager {
    
    static let shared = StorageManager()
    
    @AppStorage("dish") private var dishData: Data?
    
    private init() {}
    
    func save(_ dish: Dish) {
        dishData = try? JSONEncoder().encode(dish)
    }
    
    func fetchUser() -> [Dish] {
        guard let dishData else { return [Dish()] }
        let dish = try? JSONDecoder().decode([Dish].self, from: dishData)
        guard let dish else { return [Dish()] }
        return dish
    }
    
    func deleteAllData(userManager: DataStore) {
        
    }
}
