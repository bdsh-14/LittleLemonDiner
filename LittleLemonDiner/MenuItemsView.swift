//
//  ContentView.swift
//  LittleLemonDiner
//
//  Created by Bidisha Biswas on 8/7/24.
//

import SwiftUI

struct MenuItemsView: View {
	let foods: [MenuItem] = MockData.foods
	let drinks: [MenuItem] = MockData.drinks
	let desserts: [MenuItem] = MockData.desserts

	var body: some View {
		let columns = [
			GridItem(.flexible()),
			GridItem(.flexible()),
			GridItem(.flexible())
		]
		NavigationStack {
			ScrollView {
				Section {
					LazyVGrid(columns: columns) {
						ForEach(foods) { food in
							MenuItemGridRowView(name: food.name)
						}
					}
				} header: {
					HeaderView(type: "Foods")
				}
				Section {
					LazyVGrid(columns: columns) {
						ForEach(drinks) { drink in
							MenuItemGridRowView(name: drink.name)
						}
					}
				} header: {
					HeaderView(type: "Drinks")
				}
				Section {
					LazyVGrid(columns: columns) {
						ForEach(desserts) { dessert in
							MenuItemGridRowView(name: dessert.name)
						}
					}
				} header: {
					HeaderView(type: "Desserts")
				}
			}
			.navigationTitle("Menu")
		}
	}
}

#Preview {
	MenuItemsView()
}
