import SwiftUI

struct MenultemsOptionView: View {
	var body: some View {
		NavigationStack {
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
			.navigationTitle("Filter")
			.toolbar {
				ToolbarItem(placement: .topBarTrailing) {
					Button("Done") {
						print("Done button tapped!")
					}
				}
			}
		}
	}
}

#Preview {
    MenultemsOptionView()
}
