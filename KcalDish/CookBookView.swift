//
//  CookBookView.swift
//  KcalDish
//
//  Created by Vlad Rudenko on 06.07.2024.
//

import SwiftUI

struct CookBookView: View {
    @EnvironmentObject var dishList: DataStore
    @EnvironmentObject var dishManager: DishManager
    private let storageManager = StorageManager.shared
    
    var body: some View {
        List(storageManager.fetchUser()) { dish in
            NavigationLink(destination: DishInformationView(disn: dish)) {
                Text(dish.dishName)
            }
        }
    }
}

#Preview {
    CookBookView()
        .environmentObject(DishManager())
}
