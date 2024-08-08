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
        Text(type)
			.frame(alignment: .leading)
			.font(.title)
    }
}

#Preview {
	HeaderView(type: "Foods")
}
