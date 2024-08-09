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
	@State private var isShowingFilters: Bool = false

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
							NavigationLink(destination: MenuItemDetailsView(name: food.name)) {
								MenuItemGridRowView(name: food.name)
							}
						}
					}
				} header: {
					HeaderView(type: "Foods")
				}
				Section {
					LazyVGrid(columns: columns) {
						ForEach(drinks) { drink in
							NavigationLink(destination: MenuItemDetailsView(name: drink.name)) {
								MenuItemGridRowView(name: drink.name)
							}
						}
					}
				} header: {
					HeaderView(type: "Drinks")
				}
				Section {
					LazyVGrid(columns: columns) {
						ForEach(desserts) { dessert in
							NavigationLink(destination: MenuItemDetailsView(name: dessert.name)) {
								MenuItemGridRowView(name: dessert.name)
							}
						}
					}
				} header: {
					HeaderView(type: "Desserts")
				}

			}
			.navigationTitle("Menu")
			.toolbar {
				ToolbarItem(placement: .topBarTrailing) {
					Button {
						print("Filter button tapped")
						isShowingFilters.toggle()
					} label: {
						Image(systemName: "slider.horizontal.3")
							.resizable()
					}
				}
			}
		}
		.sheet(isPresented: $isShowingFilters) {
			MenultemsOptionView()
		}
	}
}

#Preview {
	MenuItemsView()
}
