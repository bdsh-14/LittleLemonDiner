import Foundation

struct MenuItem: Identifiable {
	let name: String
	let type: MenuCategory
	let price: Double

	let id = UUID()
}

enum MenuCategory: String, CaseIterable {
	case food
	case drink
	case dessert
}

enum SortByCategory: String, CaseIterable {
	case mostPopular = "Most popular"
	case price = "Price $-$$$"
	case a_to_z = "A-Z"
}

struct MockData {
	static let foods: [MenuItem] = {
		var items: [MenuItem] = []

		for i in 1...12 {
			let item = MenuItem(name: "Food \(i)", type: .food, price: Double.random(in: 20.0...30.0))
			items.append(item)
		}
		return items
	}()

	static let desserts: [MenuItem] = {
		var desserts: [MenuItem] = []
		for i in 1...4 {
			desserts.append(MenuItem(name: "Dessert \(i)", type: .dessert, price: Double.random(in: 5.0...12.0)))
		}
		return desserts
	}()

	static let drinks: [MenuItem] = {
		var drinks: [MenuItem] = []
		for i in 1...8 {
			drinks.append(MenuItem(name: "Drink \(i)", type: .drink, price: Double.random(in: 5.0...12.0)))
		}
		return desserts
	}()
}
