//
//  StartView.swift
//  KcalDish
//
//  Created by Vlad Rudenko on 06.07.2024.
//

import SwiftUI

struct StartView: View {
    
    @State private var numberOfIngredients = ""
    @State private var calculateViewIsOpen = false
    @EnvironmentObject var dataStore: DataStore
    @EnvironmentObject var dishManager: DishManager
    
    var body: some View {
        VStack(alignment: .center, spacing: 20) {
            Text("Hi, let's start calculate your dish!")
            TextField("How many ingredients?", text: $numberOfIngredients)
                .frame(width: 250)
                .keyboardType(.numberPad)
            Button(action: {
                if let numberOfIngredients = Int(numberOfIngredients), numberOfIngredients > 0 {
                    calculateViewIsOpen = true
                }
            }) {
                Text("Calculate")
            }
            .sheet(isPresented: $calculateViewIsOpen) {
                CalculateDishView(numberOfProducts: Int(numberOfIngredients) ?? 0).environmentObject(dishManager)
            }
        }
    }
}

#Preview {
    StartView()
        .environmentObject(DishManager())
}
