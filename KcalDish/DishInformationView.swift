//
//  DishInformationView.swift
//  KcalDish
//
//  Created by Vlad Rudenko on 06.07.2024.
//

import SwiftUI

struct DishInformationView: View {
    
    let disn: Nutrition
    
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 15) {
                Text(disn.dishName)
                    .font(.title)
                Text("\(KFCP.Kcal): \(disn.kcal)")
                    .font(.callout)
                Text("\(KFCP.Fats): \(disn.fats)")
                    .font(.callout)
                Text("\(KFCP.Carbohydrates): \(disn.carbohydrates)")
                    .font(.callout)
                Text("\(KFCP.Proteins): \(disn.proteins)")
                    .font(.callout)
                Text("List of ingredients:")
                    .font(.title2)
                ScrollView {
                    VStack(alignment: .leading, spacing: 10) {
                        ForEach(disn.ingredients) { ingredient in
                            Text(ingredient.name)
                                .font(.title3)
                            Text("\(KFCP.Kcal): \(ingredient.kcal)")
                                .font(.caption)
                            Text("\(KFCP.Fats): \(ingredient.fats)")
                                .font(.caption)
                            Text("\(KFCP.Carbohydrates): \(ingredient.carbohydrates)")
                                .font(.caption)
                            Text("\(KFCP.Proteins): \(ingredient.proteins)")
                                .font(.caption)
                        }
                    }
                }
                Spacer()
            }
            .padding()
            
            Spacer()
        }
        .navigationTitle("Info for 100 gramm")
    }
}

#Preview {
    DishInformationView(disn: DataStore.shared.dishList[2])
}
