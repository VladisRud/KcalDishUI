//
//  KcalDishApp.swift
//  KcalDish
//
//  Created by Vlad Rudenko on 05.07.2024.
//

import SwiftUI

@main
struct KcalDishApp: App {
    @StateObject private var dishManager = DishManager()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(dishManager)
        }
    }
}
