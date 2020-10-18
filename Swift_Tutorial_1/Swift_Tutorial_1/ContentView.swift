//
//  ContentView.swift
//  Swift_Tutorial_1
//
//  Created by Roman Matveev on 18.10.2020.
//  Copyright © 2020 BeornStudio. All rights reserved.
//

import SwiftUI

// MARK: - View

struct ContentView: View {

	var body: some View {
		VStack {
			MapView()
				.edgesIgnoringSafeArea(.top)
				.frame(height: 300)
			CircleImage()
				.padding(.bottom, -130.0)
				.offset(y: -130.0)
			VStack(alignment: .leading) {
				Text("Turtle Rock")
					.font(.title)
					.frame(width: nil)
				HStack {
					Text("Joshua Tree Ntional Park")
						.font(.subheadline)
					Spacer()
					Text("California")
						.font(.subheadline)
				}
			}
			.padding(.horizontal)
			Spacer()
		}
	}
}

// MARK: - PreviewProvider

struct ContentView_Previews: PreviewProvider {

	static var previews: some View {
		ContentView()
	}
}
