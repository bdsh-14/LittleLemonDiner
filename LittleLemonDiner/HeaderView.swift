import SwiftUI

struct HeaderView: View {
	let type: String
    var body: some View {
		HStack {
			Text(type)
				.font(.title)
				.padding([.leading, .top])
			Spacer()
		}
    }
}

#Preview {
	HeaderView(type: "Foods")
}
