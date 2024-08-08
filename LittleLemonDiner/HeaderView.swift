//
//  HeaderView.swift
//  LittleLemonDiner
//
//  Created by Bidisha Biswas on 8/8/24.
//

import SwiftUI

struct HeaderView: View {
	let type: String
    var body: some View {
		HStack {
			Text(type)
				.font(.title)
				.padding(.leading)
			Spacer()
		}
    }
}

#Preview {
	HeaderView(type: "Foods")
}
