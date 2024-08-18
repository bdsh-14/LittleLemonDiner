import SwiftUI

struct MenuItemDetailsView: View {
	let name: String

    var body: some View {
		VStack(alignment: .leading) {
			Text(name)
				.font(.largeTitle)
				.fontWeight(.bold)
			Image("Lemon-logo")
				.resizable()
				.frame(width: 200, height: 300, alignment: .center)

		}
    }
}

#Preview {
    MenuItemDetailsView(name: "Lemon")
}
