//
//  DishManager.swift
//  KcalDish
//
//  Created by Vlad Rudenko on 11.07.2024.
//

import Foundation
import Combine
import SwiftUI

final class DishManager: ObservableObject {
    
    @Published var dish = [Dish()]
    
    init(dish: Dish = Dish()) {
        self.dish.append(dish)
    }
    
}
