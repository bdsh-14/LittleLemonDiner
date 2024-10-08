import SwiftUI

struct MenuItemGridRowView: View {
	let name: String

    var body: some View {
		GridRow {
			VStack {
				Rectangle()
					.frame(width: 100, height: 90)
					.foregroundStyle(Color.pink)
				Text(name)
					.foregroundStyle(Color.black)
			}
		}
    }
}

#Preview {
    MenuItemGridRowView(name: "Pasta salad")
}
