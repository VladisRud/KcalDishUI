//
//  CalculateDishView.swift
//  KcalDish
//
//  Created by Vlad Rudenko on 08.07.2024.
//

import SwiftUI

struct CalculateDishView: View {
    
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var dataStore: DataStore
    @EnvironmentObject var dishManager: DishManager
    @State var numberOfProducts: Int = 4
    @State private var dishName = ""
    @State private var totalMass = ""
    @State private var products: [Product]
    private let storageManager = StorageManager.shared
    
    init(numberOfProducts: Int) {
        self.numberOfProducts = numberOfProducts
        self._products = State(initialValue: Array(repeating: Product(id: Int.random(in: 1...10000), name: "", mass: "", kcal: "", fats: "", carbohydrates: "", proteins: ""), count: numberOfProducts))
    }
    
    var body: some View {
        VStack(alignment: .center) {
            TextField("Dish Name", text: $dishName)
                .frame(width: 250)
            TextField("Total mass after cooking", text: $totalMass)
                .frame(width: 250)
                .keyboardType(.numberPad)
        }
        List {
            ForEach(0..<products.count, id: \.self) { product in
                VStack {
                    TextField("Product Name", text: $products[product].name)
                        .frame(width: 250)
                    TextField("Products Mass", text: $products[product].mass)
                        .frame(width: 250)
                        .keyboardType(.numberPad)
                    TextField("Products Kcal", text: $products[product].kcal)
                        .frame(width: 250)
                        .keyboardType(.decimalPad)
                    TextField("Products Fats", text: $products[product].fats)
                        .frame(width: 250)
                        .keyboardType(.decimalPad)
                    TextField("Products Carboohydrate", text: $products[product].carbohydrates)
                        .frame(width: 250)
                        .keyboardType(.decimalPad)
                    TextField("Products Protein", text: $products[product].proteins)
                        .frame(width: 250)
                        .keyboardType(.decimalPad)
                }
            }
        }
        .frame(height: 500)
        
        Button(action: {addNewDish()}) {
            Text("Calculate New Dish")
        }
    }
   
    func addNewDish() {
        let newProducts = products
        let newDish = Dish(id: Int.random(in: 1...100000), dishName: dishName, kcal: 100, fats: 100, carbohydrates: 100, proteins: 100, ingredients: newProducts)
        storageManager.save(newDish)
//        dataStore.dishList.append(newDish)
        presentationMode.wrappedValue.dismiss()
    }
}

#Preview {
    CalculateDishView(numberOfProducts: 4)
        .environmentObject(DishManager())
}
