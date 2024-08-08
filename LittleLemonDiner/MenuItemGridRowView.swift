//
//  MenuItemGridRowView.swift
//  LittleLemonDiner
//
//  Created by Bidisha Biswas on 8/8/24.
//

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
			}
		}
    }
}

#Preview {
    MenuItemGridRowView(name: "Pasta salad")
}
