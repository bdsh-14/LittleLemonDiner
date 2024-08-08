//
//  ContentView.swift
//  LittleLemonDiner
//
//  Created by Bidisha Biswas on 8/7/24.
//

import SwiftUI

struct MenuItemsView: View {
	let foods: [MenuItem] = MockData.foods
	var body: some View {
		let columns = [
			GridItem(.flexible()),
			GridItem(.flexible()),
			GridItem(.flexible())
		]
		ScrollView {
			LazyVGrid(columns: columns) {
				ForEach(foods) { food in
					GridRow {
						VStack {
							Rectangle()
								.frame(width: 100, height: 90)
								.foregroundStyle(Color.pink)
							Text(food.name)
						}
					}
				}
			}
		}
	}
}

#Preview {
    MenuItemsView()
}
