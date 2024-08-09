//
//  MenultemsOptionView.swift
//  LittleLemonDiner
//
//  Created by Bidisha Biswas on 8/8/24.
//

import SwiftUI

struct MenultemsOptionView: View {
	var body: some View {
		List {
			Section {
				Text(MenuCategory.food.rawValue.capitalized)
				Text(MenuCategory.drink.rawValue.capitalized)
				Text(MenuCategory.dessert.rawValue.capitalized)
			}
			header: {
				Text("Selected Categories")
			}
			Section {
				Text(SortByCategory.mostPopular.rawValue.capitalized)
				Text(SortByCategory.price.rawValue)
				Text(SortByCategory.a_to_z.rawValue)
			}
			header: {
				Text("Sort by")
			}
		}
	}
}

#Preview {
    MenultemsOptionView()
}
