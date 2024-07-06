//
//  CookBookView.swift
//  KcalDish
//
//  Created by Vlad Rudenko on 06.07.2024.
//

import SwiftUI

struct CookBookView: View {
    let dishList: [Nutrition]
    
    var body: some View {
        List(dishList) { dish in
            NavigationLink(destination: DishInformationView(disn: dish)) {
                Text(dish.dishName)
            }
        }
    }
}

#Preview {
    CookBookView(dishList: DataStore.shared.dishList)
}
