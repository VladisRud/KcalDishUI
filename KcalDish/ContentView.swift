//
//  ContentView.swift
//  KcalDish
//
//  Created by Vlad Rudenko on 05.07.2024.
//

import SwiftUI

struct ContentView: View {
    
    
    var body: some View {
        NavigationStack {
            TabView {
                StartView()
                    .tabItem {
                        Image(systemName: "fork.knife")
                        Text("Calculator")
                    }
                CookBookView()
                    .tabItem {
                        Image(systemName: "text.book.closed.fill")
                        Text("Cook Book")
                    }
                
                    .padding()
                    .navigationTitle("Kcal in Dish")
            }
        }
    }
}

#Preview {
    ContentView()
        .environmentObject(DishManager())
}
